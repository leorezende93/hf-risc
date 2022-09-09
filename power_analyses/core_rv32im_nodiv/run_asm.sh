#!/bin/sh

mkdir results
mkdir results/asm
mkdir results/asm/${1}

module load innovus/181

innovus -common_ui -no_gui -files power_analysis_${1}.tcl

cp activity.report.avgpower results/asm/${1}/activity_avg_power.txt
cp activity.report.hierpwr  results/asm/${1}/activity_hier_power.txt


