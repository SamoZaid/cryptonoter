#! /bin/bash

docker network create -d bridge \
--subnet=10.10.168.0/24 \
--ip-range=10.10.168.0/24 \
--gateway=10.10.168.254 \
mybrnw
