#!/bin/bash

if [ "$1" != "" ]; then
    echo "Uploading mv: $1"
    echo 
    cat $1
    echo 
    cat $1 | /usr/bin/clickhouse-client --host=ch1 -mn
    echo 

    echo "Done"
else
    echo "No files to be uploaded"
fi