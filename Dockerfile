FROM ubuntu:16.04
MAINTAINER PiHiZi <pihizi@msn.com>

RUN mkdir /pihizi
RUN curl -sLo /pihizi/maxscale.deb https://downloads.mariadb.com/MaxScale/2.1.7/ubuntu/dists/xenial/main/binary-amd64/maxscale-2.1.7-1.ubuntu.xenial.x86_64.deb
RUN dpkg -i /pihizi/maxscale.deb
RUN apt-get install -yf

EXPOSE 4006 6603

CMD ["service", "maxscale", "start"]
