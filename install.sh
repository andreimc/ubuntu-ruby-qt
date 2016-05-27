#!/bin/bash -ex
apt-get update
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libpq-dev -y

cd /root/

curl -O http://ftp.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
tar -xzvf ruby-2.3.1.tar.gz
cd ruby-2.3.1/
./configure
make && make install

apt-get install qtbase5-dev xvfb xserver-xorg-video-dummy libyaml-dev libreadline6-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev mesa-common-dev libgd-dev libgl1-mesa-dev -y

curl -O https://dl.dropboxusercontent.com/u/10287287/Packages/qt-5.4.1.deb

dpkg -i qt-5.4.1.deb

apt-get purge build-essential -y

apt-get clean

rm -rf /root/*
rm -rf /tm/*

exit 0
