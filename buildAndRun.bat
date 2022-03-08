@echo off
call mvn clean package
call docker build -t sample/Sample .
call docker rm -f Sample
call docker run -d -p 9080:9080 -p 9443:9443 --name Sample sample/Sample