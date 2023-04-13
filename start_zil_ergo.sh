#!/bin/sh

# These environment variables should be set to for the driver to allow max mem allocation from the gpu(s).
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1

# This example file sets up ERG+ZIL mining. The ZIL configuration is added between the --zil and --zil_end
# arguments. See the DUAL_ZIL_MINING.txt guide for more info
#
# Please change the wallets below to your own before mining.

./teamredminer -a autolykos2 -o stratum+tcp://pool.eu.woolypooly.com:3100 -u 9fTUDDSjg5wRmkEEGNKEw5hrx1ZZNjAcjMFzWfusryk7kvLjww5.trmtest -p x --zil -o stratum+tcp://eu.ezil.me:4444 -u 0x02101Ff031529661dcAb36614d0Fa5a76e4721B4.zil14fw7uxmrjrlsxdfsjp6razax6ysk2eerc7uryy.trmtest_zil -p x --zil_end
