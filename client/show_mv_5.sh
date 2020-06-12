#!/bin/bash

echo "---------------------------------------------------------------------------------------------"

echo "CH1:"
/usr/bin/clickhouse-client --host=ch1 --query="select user_id, countMerge(trans_sum) from itmo.trans_cnt_sum_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"

echo "CH2:"
/usr/bin/clickhouse-client --host=ch2 --query="select user_id, countMerge(trans_sum) from itmo.trans_cnt_sum_distributed group by user_id limit 5"

echo "---------------------------------------------------------------------------------------------"

echo "CH3:"
/usr/bin/clickhouse-client --host=ch3 --query="select user_id, countMerge(trans_sum) from itmo.trans_cnt_sum_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"

echo "CH4:"
/usr/bin/clickhouse-client --host=ch4 --query="select user_id, countMerge(trans_sum) from itmo.trans_cnt_sum_distributed group by user_id limit 10"

echo "---------------------------------------------------------------------------------------------"
