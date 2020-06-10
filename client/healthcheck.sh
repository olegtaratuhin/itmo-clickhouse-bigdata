#!/bin/bash

/usr/bin/clickhouse-client --host ch1 --query="SELECT * FROM system.clusters"