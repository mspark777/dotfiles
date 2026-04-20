#!/bin/sh

command -v nvidia-smi > /dev/null 2>&1
if [ $? -eq 0 ]
then
  GPU_UTIL=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
  printf '{"text": "%s"}' "$GPU_UTIL"
else
  printf '{"text": "--"}'
fi
