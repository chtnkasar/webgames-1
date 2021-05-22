FROM centos:7


MAINTAINER RD & CK


RUN yum install httpd -y && yum install git -y

RUN sed -ie '119c DocumentRoot "/var/www/html/webgames"' /etc/httpd/conf/httpd.conf && sed -ie '124c <Directory "/var/www/html/">' /etc/httpd/conf/httpd.conf && sed -ie '131c <Directory "/var/www/html/webgames">' /etc/httpd/conf/httpd.conf

WORKDIR /var/www/html


RUN git clone https://github.com/Rushi017/webgames.git


CMD apachectl -DFOREGROUND
