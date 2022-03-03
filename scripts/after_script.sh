#!/bin/bash

sudo -i

docker container run --name apache -p 8080:80 987240292938.dkr.ecr.ap-south-1.amazonaws.com/http:latest
