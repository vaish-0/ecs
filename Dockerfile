FROM centos:7
RUN yum update -y && yum install httpd httpd-tools -y
#RUN apt-get update -y && apt-get install apache2 tzdata -y && apt-get install apache2-utils -y
WORKDIR /var/www/html/
COPY index.html . 
EXPOSE 80
#CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"] 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
