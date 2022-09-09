read_db ../../psynth/core_rv32im_nodiv/results/processor_pos_filler.dat/

read_activity_file -reset 

read_activity_file -scope tb/processor -format VCD ../../riscv/sim_netlist/core_rv32im_nodiv/core_rv32im_nodiv_sum.vcd

report_vector_profile -hierarchy all -detailed_report true -out_file activity.report

exit
