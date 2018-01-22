#! /bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
proj_dir=`dirname $script_dir`

docker run --rm  --name cryptonoter -td -p 7777:7777 \
--network=mybrnw --ip=10.10.168.2 \
-v $proj_dir/CryptoNoter/server.js:/srv/CryptoNoter/server.js \
-e DOMAIN=mfccdn.asuscomm.com \
-e POOL=pool.cryptonoter.com:1111 \
-e ADDR=48YzKUCcNV4MCaaHmFgJcc9SSWqBPVBEzic3ifoavqU6W8Ue3qSmNfXQhNvuVx2ZFQCLmwVa33483Kxwv4emG3kN69WdXXz \
-e PASS=x \
cbarraford/cryptonoter-docker
