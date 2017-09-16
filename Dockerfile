FROM ubuntu:16.04
MAINTAINER PiHiZi <pihizi@msn.com>

RUN mkdir /pihizi

ADD file /pihizi/file

RUN dpkg -i /pihizi/file/maxscale-2.1.7-1.ubuntu.xenial.x86_64.deb
RUN apt-get install -yf

EXPOSE 4006 6603

CMD ["service", "maxscale", "start"]
