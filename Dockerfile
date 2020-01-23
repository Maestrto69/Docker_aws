FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Docker App1. <b>v1.0</b1>' > /var/www/html/index.html


CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
