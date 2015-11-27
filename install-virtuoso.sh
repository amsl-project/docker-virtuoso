#!/bin/bash

VMAJOR=7
VMINOR=2
VBUG=1

if [ ! -f virtuoso-opensource-${VMAJOR}.${VMINOR}.${VBUG}.tar.gz ]; then
    wget https://github.com/openlink/virtuoso-opensource/releases/download/v${VMAJOR}.${VMINOR}.${VBUG}/virtuoso-opensource-${VMAJOR}.${VMINOR}.${VBUG}.tar.gz
fi
tar -xzf virtuoso-opensource-${VMAJOR}.${VMINOR}.${VBUG}.tar.gz
mkdir virtuoso
cd virtuoso-opensource-${VMAJOR}.${VMINOR}.${VBUG}
./autogen.sh
./configure --prefix=/home/virtuoso/virtuoso
make
make install
mkdir /home/virtuoso/virtuoso/share/data
