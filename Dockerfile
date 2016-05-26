FROM ubuntu:14.04.4

ADD install.sh /usr/bin

RUN install.sh
