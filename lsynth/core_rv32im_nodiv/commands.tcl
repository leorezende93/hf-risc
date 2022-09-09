##############################################################
##              Logical synthesis commands                  ##
##                   GAPH/FACIN/PUCRS                       ##
##############################################################

## 1) load synthesis configuration, read description and elaborate design 
include load.tcl
read_hdl -vhdl " \
		../../riscv/core_rv32im_nodiv/bshifter.vhd \
		../../riscv/core_rv32im_nodiv/alu.vhd \
		../../riscv/core_rv32im_nodiv/mul.vhd \
		../../riscv/core_rv32im_nodiv/control.vhd \
		../../riscv/core_rv32im_nodiv/reg_bank.vhd \
		../../riscv/core_rv32im_nodiv/datapath.vhd \
		../../riscv/core_rv32im_nodiv/int_control.vhd \
		../../riscv/core_rv32im_nodiv/cpu.vhd \
		../../devices/controllers/uart/uart.vhd \
"

elaborate ${DESIGN_TOP}

## 2) read constraints
read_sdc ./constraints.sdc
set_dont_use *SDF*

## 3) synthesize 
set_db auto_ungroup none

synthesize -to_mapped -eff high -no_incr
syn_opt  
syn_opt -incremental

## 4) build physical synthesis environment
write_design -encounter -basename results/layout/${DESIGN_TOP}
write_design -encounter -basename ../../psynth/core_rv32im_nodiv/layout/${DESIGN_TOP}

## 5) post synthesis reports
report area   > results/${DESIGN_TOP}_area.txt
report timing > results/${DESIGN_TOP}_timing.txt
report power  > results/${DESIGN_TOP}_power.txt
report_gates  > results/${DESIGN_TOP}_gates.txt
								
#Generate sdc pos synthesis
write_sdc > results/${DESIGN_TOP}.sdc
							
#Generate sdf pos synthesis
write_sdf > results/${DESIGN_TOP}.sdf

exit
