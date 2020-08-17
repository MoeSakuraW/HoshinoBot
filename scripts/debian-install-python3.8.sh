#!/bin/sh
apt update
apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
curl -O https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tar.xz
tar -xf Python-3.8.5.tar.xz && cd Python-3.8.5
./configure --enable-optimizations
make -j 3
make altinstall
cd .. && rm -rf Python-3.8.5 Python-3.8.5.tar.xz
echo 'Asia/Shanghai' > /etc/timezone