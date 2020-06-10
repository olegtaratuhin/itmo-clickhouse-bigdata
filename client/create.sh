#!/bin/bash

cat create_database.sql | /usr/bin/clickhouse-client --host=ch1 -mn
cat create_database.sql | /usr/bin/clickhouse-client --host=ch2 -mn
cat create_database.sql | /usr/bin/clickhouse-client --host=ch3 -mn
cat create_database.sql | /usr/bin/clickhouse-client --host=ch4 -mn