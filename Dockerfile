# docker-echo-hostname
#
# VERSION 1.0.0

FROM debian:wheezy
MAINTAINER Nick Poorman <mail@nickpoorman.com>

ADD echo.sh /echo.sh

CMD /echo.sh
