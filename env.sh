#!/bin/bash
cd /root
git clone https://github.com/RMerl/am-toolchains.git
mkdir /opt
ln -s /root/am-toolchains/brcm-arm-hnd /opt/toolchains
export LD_LIBRARY_PATH=$LD_LIBRARY:/opt/toolchains/crosstools-arm-gcc-5.3-linux-4.1-glibc-2.22-binutils-2.25/usr/lib
export TOOLCHAIN_BASE=/opt/toolchains
export PATH=$PATH:/opt/toolchains/crosstools-arm-gcc-5.3-linux-4.1-glibc-2.22-binutils-2.25/usr/bin
export PATH=$PATH:/opt/toolchains/crosstools-aarch64-gcc-5.3-linux-4.1-glibc-2.22-binutils-2.25/usr/bin
ln -s /root/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3 /opt/brcm-arm
ln -s /root/am-toolchains/brcm-arm-sdk /home/asuswrt-merlin/release/src-rt-6.x.4708/toolchains
export PATH=$PATH:/opt/brcm-arm/bin