FROM php:5.6-apache
MAINTAINER Artem Silenkov <artem.silenkov@gmail.com>

RUN apt-get update && \
    apt-get -y install git php-pgsql
	
RUN git clone https://github.com/operasoftware/dns-ui.git

