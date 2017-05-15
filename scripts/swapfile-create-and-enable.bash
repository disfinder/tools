#!/bin/bash
SWAP_FILENAME=$1
SWAP_SIZE=$2


#fallocate -l 512M /swapfile
fallocate -l ${SWAP_SIZE} ${SWAP_FILENAME}
chmod 600 ${SWAP_FILENAME}
mkswap ${SWAP_FILENAME}
swapon ${SWAP_FILENAME}
