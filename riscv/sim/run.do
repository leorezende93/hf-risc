if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work ram.vhd
vcom -work work boot_ram.vhd

vcom -work work ../riscv/core_rv32im_nodiv/bshifter.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/alu.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/mul.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/control.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/reg_bank.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/datapath.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/int_control.vhd \
vcom -work work ../riscv/core_rv32im_nodiv/cpu.vhd \
vcom -work work ../../devices/controllers/uart/uart.vhd \

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws.vhd

# Testbench
vcom -work work ../tb/tb_rtl.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/generic_file.txt
do wave_syst2d_ws.do
onfinish exit
onbreak exit
run -all
exit 
