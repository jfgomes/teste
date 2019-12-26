FROM ubuntu:trusty
MAINTAINER JGOMES <zx.gomes@gmail.com>

RUN apt-get -y install apache2
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
