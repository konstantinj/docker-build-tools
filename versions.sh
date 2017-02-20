#!/bin/bash

curl=$(curl --version  | head -n 1 | grep -Po '\d+\.\d+.\d+' | head -n 1)
git=$(git --version | grep -P -o '\d+\.\d+\.\d+')
grep=$(grep --version | head -n 1 | grep -Po '\d+\.\d+')
sort=$(sort --version | head -n 1 | grep -Po '\d+\.\d+')
envsubst=$(envsubst --version | head -n 1 | grep -Po '\d+\.\d+.\d+')
docker=$(docker --version | grep -Po '\d+\.\d+\.\d+')
docker_compose=$(docker-compose --version | grep -Po '\d+\.\d+\.\d+')
jq=$(jq --version | grep -Po '\d+.\d+' | head -n 1)
awscli=$(aws --version 2>&1 | grep -Po 'aws-cli/\d+\.\d+\.\d+' | cut -d/ -f2)
echo -e "curl:\t\t$curl\ngit:\t\t$git\ngrep:\t\t$grep\nsort:\t\t$sort\nenvsubst:\t$envsubst\ndocker:\t\t$docker\ndocker-compose:\t$docker_compose\njq:\t\t$jq\nawscli:\t\t$awscli\ncurl:\t\t$curl"
