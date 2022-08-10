#!/bin/bash

set -eu

echo "---------------------"
echo "Run SW-only"
RISCV_BINARY_NAME=invert_and_threshold.no_accel.elf shls run_on_board

echo "---------------------"
echo "Run w/HW module"
RISCV_BINARY_NAME=invert_and_threshold.elf shls run_on_board
