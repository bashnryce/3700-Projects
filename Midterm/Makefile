all: compile elaborate simulate

.PHONY: compile elaborate simulate test FORCE

Second_ARG ?= $(word 2, $(MAKECMDGOALS))

OUTFILTER=grep --color=always -e "ERROR.*" -e "CRIT.*" -e "WARN.*" 

compile: src/*.v FORCE
	@ printf "xvlog $(XVLOG_OPTIONS) src/*.v\n"
	@! xvlog $(XVLOG_OPTIONS) src/*.v | $(OUTFILTER)

elaborate: compile
	@ printf "xelab -debug typical -s sim testbench\n"
	@! xelab -debug typical -s sim testbench | $(OUTFILTER)

simulate: elaborate
	@ printf "xsim --runall sim\n"
	@ xsim --runall sim

test: FORCE
	@echo "Running tests in: Tests/$(Second_ARG)/"
	@$(MAKE) --no-print-directory compile_t Second_ARG=$(Second_ARG)
	@$(MAKE) --no-print-directory elaborate_t Second_ARG=$(Second_ARG)
	@$(MAKE) --no-print-directory simulate_t Second_ARG=$(Second_ARG)

compile_t: FORCE
	@ printf "xvlog $(XVLOG_OPTIONS) Tests/$(Second_ARG)/*.v\n"
	@! xvlog $(XVLOG_OPTIONS) Tests/$(Second_ARG)/*.v | $(OUTFILTER)

elaborate_t: compile_t
	@ printf "xelab -debug typical -s sim testbench\n"
	@! xelab -debug typical -s sim testbench | $(OUTFILTER)

simulate_t: elaborate_t
	@ printf "xsim --runall sim\n"
	@ xsim --runall sim

gui: elaborate 
	xsim --gui sim

irun:
	irun src/*.v

implement:
	vivado -mode batch -source build.tcl

check: 
	vivado -mode batch -source check_syntax.tcl 

FORCE:

clean:
	@rm -f *.jou *.log *.history *.pb *.wdb *.rpt post_* *_webtalk.* *.bit *~ src/*~
	@rm -Rf INCA_libs xsim.dir .Xil
