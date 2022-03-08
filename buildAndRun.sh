#!/bin/sh
mvn clean package && docker build -t sample/Sample .
docker rm -f Sample || true && docker run -d -p 9080:9080 -p 9443:9443 --name Sample sample/Sample