#! /bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
proj_dir=`dirname $script_dir`

docker run --rm --name nginx -td -p 80:80 \
--network=mybrnw --ip=10.10.168.3 \
-v $proj_dir/docker/config/nginx/conf.d:/etc/nginx/conf.d \
-v $proj_dir/CryptoNoter/web:/usr/share/nginx/html \
nginx
