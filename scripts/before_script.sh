#!/bin/bash

set -x 

#sudo -i

#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum update -y

yum install docker -y

systemctl start docker
systemctl enable docker


