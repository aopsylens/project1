FROM amazonlinux

RUN yum -y update && yum -y install httpd php && yum clean all

COPY ./index.php /var/www/html/index.php


CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
