#!/bin/bash

echo "---------------------------------------------------------------------------------------------"

echo "CH1:"
/usr/bin/clickhouse-client --host=ch1 --query="SELECT user_id, countMerge(cnt) from itmo.cnt_out_user_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"

echo "CH2:"
/usr/bin/clickhouse-client --host=ch2 --query="SELECT user_id, countMerge(cnt) from itmo.cnt_out_user_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"

echo "CH3:"
/usr/bin/clickhouse-client --host=ch3 --query="SELECT user_id, countMerge(cnt) from itmo.cnt_out_user_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"

echo "CH4:"
/usr/bin/clickhouse-client --host=ch4 --query="SELECT user_id, countMerge(cnt) from itmo.cnt_out_user_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"
