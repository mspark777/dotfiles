#!/bin/sh

command -v nvidia-smi
if [ $? -eq 0 ]
then
  gpu_util=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
  printf '{"text": "%s"}' "$gpu_util"
else
  printf '{"text": "--"}'
fi

