#!/bin/bash

if [ "$1" != "" ]; then
    echo "Uploading mv: $1"
    echo 
    cat $1
    echo 
    cat $1 | /usr/bin/clickhouse-client --host=ch1 -mn
    cat $1 | /usr/bin/clickhouse-client --host=ch2 -mn
    cat $1 | /usr/bin/clickhouse-client --host=ch3 -mn
    cat $1 | /usr/bin/clickhouse-client --host=ch4 -mn
    echo 

    echo "Done"
else
    echo "No files to be uploaded"
fi