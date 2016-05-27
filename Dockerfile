FROM ubuntu:14.04.4

ADD install.sh /usr/bin

RUN install.sh

ADD config/xorg.conf /etc/X11/xorg.conf
ADD config/xorg /etc/init.d/xorg
