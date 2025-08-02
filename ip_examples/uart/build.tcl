# Load project source and constraint files
read_verilog [ glob src/*.v ]
read_xdc uart_demo.xdc

# Load IP source and constraint files
read_verilog [ glob ip/uart/src/*.v ]
read_verilog [ glob ip/sevensegment/src/*.v ]
read_xdc ip/uart/xdc/uart.xdc
read_xdc ip/sevensegment/xdc/sevensegment.xdc

# Run Synthesis

synth_design -top uart_demo -part xc7a35tcpg236-1
write_verilog -force post_synth.v

# Implement (optimize, place, route)
opt_design
place_design
route_design


# Generate Reports
report_timing_summary -file post_route_timing.rpt
report_utilization -file post_route_utilization.rpt

# Make bitstream
write_bitstream -force uart_demo.bit

