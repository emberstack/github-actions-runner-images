#!/bin/bash

wget -O azcopy.tar.gz https://aka.ms/downloadazcopy-v10-linux
tar zxvf azcopy.tar.gz --strip-components=1 -C /usr/local/bin
ln -sf /usr/local/bin/azcopy /usr/local/bin/azcopy10

azcopy10 --version
azcopy --version