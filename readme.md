# ITMO BigData course 2020

## Getting started

This repo contains a preset for starting 4 clickhouse instances, 1 zookeeper and a client to connect to them. 4 instances are orginized into 2 shards with 2 replicas in each of them.

1. install docker and docker-compose on your machine
2. configure docker to have reasonable resorces
3. launch server:
    1. go to /server directory
    2. run **$ docker-compose up --build**
4. launch client:
    1. go to /client
    2. run **$ docker-compose run client**

There is a convenince script **./clean.sh**, that is usefull if you need a fresh start

## Uploading data

As everything has been set up, you should have a container with clickhouse-client set up and running. The whole /client directory is mounted to the container, so you can put what's nececcary in there.
As part of the assignment there is predefined set of tables and queries that are task specific.
