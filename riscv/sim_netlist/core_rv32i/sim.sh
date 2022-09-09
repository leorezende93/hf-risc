#!/bin/sh

cd ../../../software/
make clean ${1}
cd -
cp -f ../../../software/code.txt .
vsim -c -do run_core_rv32i.do ; cat debug.txt 
mv core_rv32i.vcd core_rv32i_${1}.vcd
