#!/bin/sh

./run_asm.sh arith
./run_asm.sh branch
./run_asm.sh jump
./run_asm.sh load_store
./run_asm.sh logic
./run_asm.sh "mv"
./run_asm.sh nop
./run_asm.sh "shift"


