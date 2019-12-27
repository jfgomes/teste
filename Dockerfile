FROM ubuntu:latest
MAINTAINER JGOMES <zx.gomes@gmail.com>

RUN apt-get update
RUN apt-get upgrade
RUN apt-get -y install apache2
RUN apt-get -y install curl

COPY index.html /var/www/html/

USER root

COPY iptables.sh /usr/local/bin/iptables.sh
RUN chmod +x /usr/local/bin/iptables.sh && apt-get -y install iptables
CMD iptables.sh

HEALTHCHECK --interval=12s --timeout=12s --start-period=30s --retries=1 CMD curl --fail http://localhost || exit 1  
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
