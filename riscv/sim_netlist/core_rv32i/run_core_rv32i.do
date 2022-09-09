if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Compile the Verilog source(s).
vlog /soft64/design-kits/stm/65nm-cmos065_536/CORE65GPSVT_5.1/behaviour/verilog/CORE65GPSVT.v
vlog /soft64/design-kits/stm/65nm-cmos065_536/CLOCK65GPSVT_3.1/behaviour/verilog/CLOCK65GPSVT.v

vcom -work work ram.vhd
vcom -work work boot_ram.vhd

vlog ../../../psynth/core_rv32i/results/processor.v

vcom -work work ../../../devices/controllers/uart/uart.vhd
vcom -work work ../../../devices/peripherals/minimal_soc_uart.vhd


# Testbench
vcom -work work hf-riscv_tb.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps -sdfmax /tb/processor=../../../psynth/core_rv32i/results/processor.sdf work.tb
do wave.do
vcd file core_rv32i.vcd
vcd add -r /tb/processor/*
onfinish exit
onbreak exit
run -all
exit 
