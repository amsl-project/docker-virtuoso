#!/bin/bash
if [ ! -f virtuoso-opensource-7.2.0.1.zip ]; then
    wget https://github.com/openlink/virtuoso-opensource/archive/stable/7.zip -O virtuoso-opensource-7.2.0.1.zip
fi
unzip virtuoso-opensource-7.2.0.1.zip
mkdir virtuoso
cd virtuoso-opensource-stable-7
./autogen.sh
./configure --prefix=/home/virtuoso/virtuoso
make
make install
mkdir /home/virtuoso/virtuoso/share/data
