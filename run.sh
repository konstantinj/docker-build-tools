#!/bin/bash
docker run -it --rm --privileged --name docker -v /var/run/docker.sock:/var/run/docker.sock -v "${HOME}":"${HOME}" -v "${PWD}":"${PWD}" -w "${PWD}" --env-file <(env) konjak/make-docker-aws "$@"
