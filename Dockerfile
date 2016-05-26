FROM ubuntu:16.04

ADD install.sh /usr/bin

RUN install.sh
