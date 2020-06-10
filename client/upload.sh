#!/bin/bash

cat transactions_12M.parquet | /usr/bin/clickhouse-client --host ch1 --query="insert into itmo.transactions_distributed format Parquet"