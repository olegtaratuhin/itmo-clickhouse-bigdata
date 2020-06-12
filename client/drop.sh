#!/bin/bash

cat create_database.sql | /usr/bin/clickhouse-client --host=ch1 --query="drop database itmo"
cat create_database.sql | /usr/bin/clickhouse-client --host=ch2 --query="drop database itmo"
cat create_database.sql | /usr/bin/clickhouse-client --host=ch3 --query="drop database itmo"
cat create_database.sql | /usr/bin/clickhouse-client --host=ch4 --query="drop database itmo"