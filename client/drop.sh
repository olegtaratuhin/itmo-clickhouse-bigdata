#!/bin/bash

cat create_database.sql | /usr/bin/clickhouse-client --host=ch1 --query="drop table itmo"
cat create_database.sql | /usr/bin/clickhouse-client --host=ch2 --query="drop table itmo"
cat create_database.sql | /usr/bin/clickhouse-client --host=ch3 --query="drop table itmo"
cat create_database.sql | /usr/bin/clickhouse-client --host=ch4 --query="drop table itmo"