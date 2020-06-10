CREATE DATABASE itmo;

CREATE TABLE itmo.transactions(
    amount Float32, 
    datetime Date, 
    important UInt8, 
    user_id_in UInt32, 
    user_id_out UInt32)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/table_name', '{replica}')
PARTITION BY toYYYYMM(datetime)
ORDER BY (user_id_in, user_id_out)
SETTINGS index_granularity = 8192;

CREATE TABLE itmo.transactions_distributed AS itmo.transactions
ENGINE = Distributed(ch_cluster, itmo, transactions, xxHash64(user_id_in, user_id_out));
