#!/bin/sh

module load riscv32-elf/8.1.0
cd ../../../software
make clean asm_${1}
cd -
cp -f ../../../software/code.txt .
vsim -c -do run_core_rv32i.do
mv core_rv32i.vcd core_rv32i_asm_${1}.vcd
