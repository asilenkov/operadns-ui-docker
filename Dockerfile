FROM php:5.6-apache
MAINTAINER Artem Silenkov <artem.silenkov@gmail.com>

RUN apt-get update && \
    apt-get -y install git

RUN pecl install pdo_pgsql \
    && docker-php-ext-enable pdo_pgsql


RUN git clone https://github.com/operasoftware/dns-ui.git

