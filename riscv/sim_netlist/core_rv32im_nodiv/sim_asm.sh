#!/bin/sh

module load modelsim
module load riscv32-elf/8.1.0

cd ../../../software/
make clean asm_${1}
cd -
cp -f ../../../software/code.txt .

vsim -c -do run_core_rv32im_nodiv.do
mv core_rv32im_nodiv.vcd core_rv32im_nodiv_asm_${1}.vcd
