#!/bin/bash

echo "---------------------------------------------------------------------------------------------"

echo "ch1 has locally: "
/usr/bin/clickhouse-client --host ch1 --query="SELECT COUNT(*) FROM itmo.transactions"

echo "ch1 has globally: "
/usr/bin/clickhouse-client --host ch1 --query="SELECT COUNT(*) FROM itmo.transactions_distributed"

echo "---------------------------------------------------------------------------------------------"

echo "ch2 has locally: "
/usr/bin/clickhouse-client --host ch2 --query="SELECT COUNT(*) FROM itmo.transactions"

echo "ch2 has globally: "
/usr/bin/clickhouse-client --host ch2 --query="SELECT COUNT(*) FROM itmo.transactions_distributed"

echo "---------------------------------------------------------------------------------------------"

echo "ch3 has locally: "
/usr/bin/clickhouse-client --host ch3 --query="SELECT COUNT(*) FROM itmo.transactions"

echo "ch3 has globally: "
/usr/bin/clickhouse-client --host ch3 --query="SELECT COUNT(*) FROM itmo.transactions_distributed"

echo "---------------------------------------------------------------------------------------------"

echo "ch4 has locally: "
/usr/bin/clickhouse-client --host ch4 --query="SELECT COUNT(*) FROM itmo.transactions"

echo "ch4 has globally: "
/usr/bin/clickhouse-client --host ch4 --query="SELECT COUNT(*) FROM itmo.transactions_distributed"

echo "---------------------------------------------------------------------------------------------"