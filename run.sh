#!/bin/bash
docker build -t python36 .
docker container stop python
docker container rm python
docker run -d -v ~/www/web:/www/web -p 80:80 --name python python36 
