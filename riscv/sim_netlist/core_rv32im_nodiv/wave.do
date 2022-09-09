onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group CORE /tb/processor/addr_o
add wave -noupdate -group CORE /tb/processor/clk_i
add wave -noupdate -group CORE /tb/processor/data_i
add wave -noupdate -group CORE /tb/processor/data_in_cpu
add wave -noupdate -group CORE /tb/processor/data_mode_o
add wave -noupdate -group CORE /tb/processor/data_o
add wave -noupdate -group CORE /tb/processor/data_w_cpu
add wave -noupdate -group CORE /tb/processor/data_w_o
add wave -noupdate -group CORE /tb/processor/exception_cpu
add wave -noupdate -group CORE /tb/processor/extio_in
add wave -noupdate -group CORE /tb/processor/extio_out
add wave -noupdate -group CORE /tb/processor/irq_ack_cpu
add wave -noupdate -group CORE /tb/processor/irq_cpu
add wave -noupdate -group CORE /tb/processor/irq_vector_cpu
add wave -noupdate -group CORE /tb/processor/rst_i
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
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/reset
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/trg
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/sig0
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/sig1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/i0
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/i1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/o0
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/o1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/rdy
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/alu_op_ctl_r_1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/p1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/clock_clone1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/clock
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN267_n_34
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN260_n_59
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN259_n_23
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN222_n
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN221_n
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN220_n
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN111_n_140
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN110_n_53
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN109_n_52
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN108_n_52
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN107_n_24
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN72_FE_OFN11_current_state_1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN71_FE_OFN11_current_state_1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN70_FE_OFN11_current_state_1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_OFN11_current_state_1
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/FE_DBTN6_n_140
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/reg
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/add_sub
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/i0_reg
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/counter
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/current_state
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_19
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_20
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_21
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_22
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_23
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_24
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_26
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_28
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_29
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_30
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_31
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_32
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_33
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_34
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_35
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_36
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_37
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_38
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_39
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_40
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_41
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_42
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_43
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_44
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_45
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_46
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_47
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_48
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_49
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_50
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_51
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_52
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_53
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_54
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_55
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_56
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_57
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_58
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_59
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_60
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_61
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_62
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_63
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_64
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_65
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_66
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_67
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_68
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_69
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_70
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_71
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_72
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_73
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_74
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_75
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_76
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_77
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_78
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_79
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_80
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_81
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_82
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_83
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_84
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_85
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_86
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_87
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_88
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_89
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_90
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_91
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_92
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_93
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_94
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_95
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_96
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_97
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_98
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_99
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_100
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_101
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_102
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_103
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_104
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_105
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_106
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_107
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_108
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_109
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_110
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_111
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_112
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_113
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_114
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_115
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_116
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_117
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_118
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_119
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_120
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_121
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_122
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_123
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_124
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_125
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_126
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_127
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_128
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_129
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_130
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_131
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_132
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_133
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_134
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_135
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_136
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_138
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_139
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_140
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_143
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_144
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_147
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_148
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_149
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_152
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_153
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_154
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_155
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_156
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_157
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_158
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_159
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_160
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_161
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_162
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_163
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_164
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_165
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_166
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_167
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_168
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_169
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_170
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_171
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_172
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_173
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_174
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_175
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_176
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_177
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_178
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_179
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_180
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_181
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_182
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_183
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_184
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_185
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_186
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_187
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_188
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_189
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_190
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_191
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_192
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_193
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_194
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_195
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_196
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_197
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_198
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_199
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_200
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_201
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_202
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_203
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_204
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_205
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_206
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_207
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_208
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_209
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_210
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_211
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_212
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_213
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_214
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_215
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_216
add wave -noupdate -expand -group MUL /tb/processor/core/alu/multiplier/n_286
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {325694043 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 214
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
WaveRestoreZoom {0 ps} {572535844 ps}
