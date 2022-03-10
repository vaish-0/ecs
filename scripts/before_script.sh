#!/bin/bash

set -x 

#sudo -i

#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum update -y

sudo yum install docker -y

systemctl start docker
systemctl enable docker

aws s3 cp s3://jenkins1010/apache.tar apache.tar
docker load -i apache.tar
