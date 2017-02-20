# Docker Development image - with Make, Docker and AWS

## Usage

You'll need to have at least bash and the docker daemon on your host.
Then clone this repo and add bin/ to your $PATH and you can use ```make```, ```docker```, ```docker-compose``` and ```aws```.

## How does it work

Your current working directory and your home directory will be mounted to the docker container. Your current working directory will be set as workind directory in the container. The docker client in the container will use the docker daemon from your host.

## Status

Production stable.
