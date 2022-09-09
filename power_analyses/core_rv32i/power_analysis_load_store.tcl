read_db ../../psynth/core_rv32i/results/processor_pos_filler.dat/

read_activity_file -reset 

read_activity_file -scope tb/processor -format VCD ../../riscv/sim_netlist/core_rv32i/core_rv32i_asm_load_store.vcd

report_vector_profile -hierarchy all -detailed_report true -out_file activity.report

exit
