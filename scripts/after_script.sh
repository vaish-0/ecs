#!/bin/bash

sudo -i

docker container run --name apache -p 80:8080 987240292938.dkr.ecr.ap-south-1.amazonaws.com/http:latest
