#!/bin/sh

GPU_UTIL=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)


printf '{"text": "%s"}' "${GPU_UTIL}"
