#! /bin/bash

./docker/stop_nginx_container.sh && \
./docker/stop_cryptonoter_container.sh && \
./docker/remove_network.sh
