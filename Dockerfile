FROM komljen/ubuntu

RUN \
  apt-get update && \
  apt-get -y install \
          apache2 && \
  rm /var/www/html/index.html && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html/
COPY index.html .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
