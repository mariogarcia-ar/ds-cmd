#!/bin/bash

# -----------------------------------------------------------------------------
# constansts

# ROOT_DIR="$(pwd)"
ROOT_DIR="/home/ohroot/Desktop/projects/DocFlow-AI/ds-cmd/"
DATA_DIR=$ROOT_DIR/data
TMP_DIR=$ROOT_DIR/tmp
SCRIPTS_DIR=$ROOT_DIR/scripts

# ------------------------------------------------------------------
# colors
RED='\033[0;31m'
NC='\033[0m' # No Color
                      
# -----------------------------------------------------------------------------
# Miscelaneous
my_printf() {
    local value=$1
    printf "\n> $value \n\n"
}
                      
