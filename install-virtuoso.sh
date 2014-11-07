#!/bin/bash
if [ ! -f virtuoso-opensource-6.1.8.zip ]; then
    wget https://github.com/openlink/virtuoso-opensource/archive/v6.1.8.zip -O virtuoso-opensource-6.1.8.zip
fi
unzip virtuoso-opensource-6.1.8.zip
mkdir virtuoso
cd virtuoso-opensource-6.1.8
./autogen.sh
./configure --prefix=/home/virtuoso/virtuoso
make
make install
mkdir /home/virtuoso/virtuoso/share/data
