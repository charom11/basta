#!/bin/sh

# These environment variables should be set to for the driver to allow max mem allocation from the gpu(s).
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1

# This example file sets up triple ETC+KAS+ZIL mining. The ZIL configuration is added between the --zil and --zil_end
# arguments. The KAS config is provided between --kas and --kas_end. See the DUAL_ZIL_MINING.txt guide for more info.
#
# Please change the wallets below to your own before mining.

./teamredminer -a etchash -o stratum+tcp://eu1-etc.ethermine.org:4444 -u 0x02197021fefa795fec661a45f60e47a6f6605281.trmtest -p x \
               --kas -o stratum+tcp://pool.woolypooly.com:3112 -u kaspa:qq0vgkm89v3k2plkw2cv9t8wrhcqhpxeunq5ayu9mwjghdavalfggat2hu8nn.trmtest -p x --kas_end \
               --zil -o stratum+tcp://eu.ezil.me:4444 -u 0x02101Ff031529661dcAb36614d0Fa5a76e4721B4.zil14fw7uxmrjrlsxdfsjp6razax6ysk2eerc7uryy.trmtest_zil -p x --zil_end
