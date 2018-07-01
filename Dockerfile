FROM fedora
MAINTAINER Artem Silenkov <artem.silenkov@gmail.com>

RUN dnf update -y && \
    dnf install -y git httpd php php-pgsql php-intl php-json php-pear-Net-Curl php-mbstring php-ldap php-pgsql

RUN dnf clean all

RUN git clone https://github.com/operasoftware/dns-ui.git

