#! /bin/bash

np=$(nproc)
echo "Number of processors ${np}"

for p in $(seq 0 $((np - 1)))
do 
  echo "Setting power scaling policy for processor ${p}"
  echo "performance" > /sys/devices/system/cpu/cpu${p}/cpufreq/scaling_governor
done
