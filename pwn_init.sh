#!/bin/bash
set -e
cd ~
sudo apt-get -y update
sudo apt-get -y install tzdata
sudo apt-get -y install vim
sudo apt-get -y install libxml2-dev
sudo apt-get -y install libxslt-dev
sudo apt-get -y install libmysqlclient-dev
sudo apt-get -y install libsqlite3-dev
sudo apt-get -y install zlib1g-dev
sudo apt-get -y install python2-dev
sudo apt-get -y install libffi-dev
sudo apt-get -y install libssl-dev
sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install gcc
sudo apt-get -y install clang
sudo apt-get -y install make
sudo apt-get -y install zip
sudo apt-get -y install build-essential
sudo apt-get -y install libncursesw5-dev libgdbm-dev libc6-dev
sudo apt-get -y install tk-dev
sudo apt-get -y install openssl
sudo apt-get -y install virtualenv
sudo apt-get -y install git
sudo apt-get -y install proxychains4


#setuptools 36.6.1 -> python2
wget https://mirrors.aliyun.com/pypi/packages/56/a0/4dfcc515b1b993286a64b9ab62562f09e6ed2d09288909aee1efdb9dde16/setuptools-36.6.1.zip
unzip setuptools-36.6.1.zip
cd setuptools-36.6.1
sudo python2 setup.py install
cd ../
sudo rm -rf setuptools-36.6.1 setuptools-36.6.1.zip

#setuptools 65.4.1 -> python3
wget https://mirrors.aliyun.com/pypi/packages/03/c9/7b050ea4cc4144d0328f15e0b43c839e759c6c639370a3b932ecf4c6358f/setuptools-65.4.1.tar.gz
tar -zxvf setuptools-65.4.1.tar.gz
cd setuptools-65.4.1
sudo python3 setup.py install
cd ../
sudo rm -rf setuptools-65.4.1 setuptools-65.4.1.tar.gz

#pip
wget https://mirrors.aliyun.com/pypi/packages/53/7f/55721ad0501a9076dbc354cc8c63ffc2d6f1ef360f49ad0fbcce19d68538/pip-20.3.4.tar.gz
tar -zxvf pip-20.3.4.tar.gz
cd pip-20.3.4
sudo python2 setup.py install
sudo python3 setup.py install
cd ../
sudo rm -rf pip-20.3.4 pip-20.3.4.tar.gz

sudo pip2 config set global.index-url https://mirrors.aliyun.com/pypi/simple
sudo pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple

sudo python2 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade pip

sudo pip2 install pathlib2

#pwntools 4.7.0
sudo pip2 install pwntools==4.7.0
sudo pip3 install pwntools==4.7.0

#pwndbg
git clone https://github.91chi.fun/https://github.com/pwndbg/pwndbg.git
cd pwndbg
./setup.sh
cd ../

#Pwngdb
git clone https://github.91chi.fun/https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwngdb/.gdbinit ~/
sed -i 'N;2 i source ~/pwndbg/gdbinit.py' ~/.gdbinit
#sed -i '/peda/d' ~/.gdbinit

#one_gadget
sudo apt-get -y install ruby-dev
sudo gem install one_gadget

#seccomp-tools
sudo gem install seccomp-tools

#patchelf
sudo apt-get -y install patchelf

#glibc-all-in-one
git clone https://github.91chi.fun/https://github.com/matrix1001/glibc-all-in-one.git

#ln python2 -> python
sudo ln -s /usr/bin/python2 /usr/bin/python

#ropper
sudo pip3 install capstone filebytes unicorn keystone-engine ropper

#qemu-system
sudo apt-get install qemu-system