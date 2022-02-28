FROM centos:7 

RUN yum update -y && yum install httpd httpd-tools -y
WORKDIR /var/www/html/
COPY index.html . 
EXPOSE 80
RUN yum install net-tools -y
 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
