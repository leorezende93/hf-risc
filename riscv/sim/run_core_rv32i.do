if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work ram.vhd
vcom -work work boot_ram.vhd

vcom -work work ../../devices/controllers/uart/uart.vhd
vcom -work work ../../devices/peripherals/minimal_soc_uart.vhd

vcom -work work ../core_rv32i/bshifter.vhd
vcom -work work ../core_rv32i//alu.vhd
vcom -work work ../core_rv32i/control.vhd
vcom -work work ../core_rv32i/reg_bank.vhd
vcom -work work ../core_rv32i/datapath.vhd
vcom -work work ../core_rv32i/int_control.vhd
vcom -work work ../core_rv32i/cpu.vhd
vcom -work work ../../devices/controllers/uart/uart.vhd

# Testbench
vcom -work work hf-riscv_tb.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb
do wave.do
onfinish exit
onbreak exit
run -all
exit 
