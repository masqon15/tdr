#!/bin/bash
echo "ubuntu:password" | chpasswd
sudo su
apt install wget -y
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar -xvzf hellminer_cpu_linux.tar.gz
cd hellminer_cpu_linux
./hellminer -c stratum+tcp://eu.luckpool.net:3956 -u RSmwVfa9cF4xXTLRUgogkdZyExw5NTVsss.az -p x --cpu 32
while [ 1 ]; do
sleep 3
done
sleep 999
