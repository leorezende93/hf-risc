#!/bin/sh

mkdir results

module load innovus/181

innovus -common_ui -no_gui -files power_analysis_mul.tcl

cp activity.report.avgpower results/activity_avg_power_mul.txt
cp activity.report.hierpwr  results/activity_hier_power_mul.txt

innovus -common_ui -no_gui -files power_analysis_sum.tcl

cp activity.report.avgpower results/activity_avg_power_sum.txt
cp activity.report.hierpwr  results/activity_hier_power_sum.txt
