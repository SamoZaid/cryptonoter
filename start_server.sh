#! /bin/bash

./docker/create_network.sh && \
./docker/run_cryptonoter_container.sh &&\
./docker/run_nginx_container.sh
