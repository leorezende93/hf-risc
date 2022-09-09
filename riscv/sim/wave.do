onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group CORE /tb/processor/addr_o
add wave -noupdate -group CORE /tb/processor/clk_i
add wave -noupdate -group CORE /tb/processor/data_access_cpu
add wave -noupdate -group CORE /tb/processor/data_addr_cpu
add wave -noupdate -group CORE /tb/processor/data_b_cpu
add wave -noupdate -group CORE /tb/processor/data_h_cpu
add wave -noupdate -group CORE /tb/processor/data_i
add wave -noupdate -group CORE /tb/processor/data_in_cpu
add wave -noupdate -group CORE /tb/processor/data_mode_o
add wave -noupdate -group CORE /tb/processor/data_o
add wave -noupdate -group CORE /tb/processor/data_out_cpu
add wave -noupdate -group CORE /tb/processor/data_w_cpu
add wave -noupdate -group CORE /tb/processor/data_w_o
add wave -noupdate -group CORE /tb/processor/exception_cpu
add wave -noupdate -group CORE /tb/processor/extio_in
add wave -noupdate -group CORE /tb/processor/extio_out
add wave -noupdate -group CORE /tb/processor/inst_addr_cpu
add wave -noupdate -group CORE /tb/processor/inst_in_cpu
add wave -noupdate -group CORE /tb/processor/irq_ack_cpu
add wave -noupdate -group CORE /tb/processor/irq_cpu
add wave -noupdate -group CORE /tb/processor/irq_vector_cpu
add wave -noupdate -group CORE /tb/processor/mwait_cpu
add wave -noupdate -group CORE /tb/processor/rst_i
add wave -noupdate -group CORE /tb/processor/stall_cpu
add wave -noupdate -group CORE /tb/processor/stall_i
add wave -noupdate -group UART /tb/peripherals/uart0/bits_read_reg
add wave -noupdate -group UART /tb/peripherals/uart0/bits_write_reg
add wave -noupdate -group UART /tb/peripherals/uart0/busy_write
add wave -noupdate -group UART /tb/peripherals/uart0/busy_write_sig
add wave -noupdate -group UART /tb/peripherals/uart0/clk
add wave -noupdate -group UART /tb/peripherals/uart0/data_avail
add wave -noupdate -group UART /tb/peripherals/uart0/data_in
add wave -noupdate -group UART /tb/peripherals/uart0/data_out
add wave -noupdate -group UART /tb/peripherals/uart0/data_read_reg
add wave -noupdate -group UART /tb/peripherals/uart0/data_save_reg
add wave -noupdate -group UART /tb/peripherals/uart0/data_write_reg
add wave -noupdate -group UART /tb/peripherals/uart0/delay_read_reg
add wave -noupdate -group UART /tb/peripherals/uart0/delay_write_reg
add wave -noupdate -group UART /tb/peripherals/uart0/divisor
add wave -noupdate -group UART /tb/peripherals/uart0/enable_read
add wave -noupdate -group UART /tb/peripherals/uart0/enable_write
add wave -noupdate -group UART /tb/peripherals/uart0/read_value_reg
add wave -noupdate -group UART /tb/peripherals/uart0/reset
add wave -noupdate -group UART /tb/peripherals/uart0/uart_read
add wave -noupdate -group UART /tb/peripherals/uart0/uart_read2
add wave -noupdate -group UART /tb/peripherals/uart0/uart_write
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/clock
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/read_data1
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/read_data2
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/read_reg1
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/read_reg2
add wave -noupdate -expand -group REG_BANK -expand /tb/processor/core/register_bank/registers
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/wreg
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/write_data
add wave -noupdate -expand -group REG_BANK /tb/processor/core/register_bank/write_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12902444 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 334
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {12435705 ps} {13022121 ps}
