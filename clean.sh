#!/bin/bash

# stop and remove running instances

docker stop server_ch1_1
docker rm server_ch1_1

docker stop server_ch2_1
docker rm server_ch2_1

docker stop server_ch3_1
docker rm server_ch3_1

docker stop server_ch4_1
docker rm server_ch4_1

docker stop server_zookeeper_1
docker rm server_zookeeper_1

echo "Running instances stopped"

# clean tmp files

cd server

cd shard-1
cd instance-1 && rm -rf volume && rm -rf log && cd ..
cd instance-2 && rm -rf volume && rm -rf log && cd ..
cd ..

cd shard-2
cd instance-3 && rm -rf volume && rm -rf log && cd ..
cd instance-4 && rm -rf volume && rm -rf log && cd ..
cd ..

echo "Mounted files cleaned up"