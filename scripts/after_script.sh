#!/bin/bash

sudo -i

docker container run -d --name apache -p 80:80 987240292938.dkr.ecr.ap-south-1.amazonaws.com/http:latest
