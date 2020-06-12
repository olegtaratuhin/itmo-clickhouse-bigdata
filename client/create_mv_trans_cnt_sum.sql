create materialized view itmo.trans_cnt_sum

engine = AggregatingMergeTree()
partition by month
order by user_id
populate

as select
    user_id_out as user_id,
    toMonth(datetime) as month,
    count(user_id_in) + count(user_id_out) as trans_sum

from itmo.transactions

group by 
    user_id_out,
    toMonth(datetime)

order by 
    toMonth(datetime)

;

create table itmo.trans_cnt_sum_distributed as itmo.trans_cnt_sum
engine = Distributed(ch_cluster, itmo, trans_cnt_sum)
;