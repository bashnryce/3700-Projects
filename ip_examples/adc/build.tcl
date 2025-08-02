# Load sources
read_verilog [ glob src/*.v ip/adc/src/*.v ip/sevensegment/src/*.v ]
read_xdc ip/sevensegment/xdc/sevensegment.xdc
read_xdc ip/adc/xdc/adc.xdc
read_xdc adc_demo.xdc

# Run Synthesis

synth_design -top adc_demo -part xc7a35tcpg236-1
write_verilog -force post_synth.v

# Implement (optimize, place, route)
opt_design
place_design
route_design


# Generate Reports
report_timing_summary -file post_route_timing.rpt
report_utilization -file post_route_utilization.rpt

# Make bitstream
write_bitstream -force adc_demo.bit

