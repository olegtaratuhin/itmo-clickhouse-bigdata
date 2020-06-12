create materialized view itmo.cnt_trans_amount_sum

engine = AggregatingMergeTree()
partition by month
order by user_id
populate

as select
    user_id_out as user_id,
    toMonth(datetime) as month,
    sum(user_id_in) - sum(user_id_out) as trans_sum

from itmo.transactions

group by 
    user_id_out,
    toMonth(datetime)

order by 
    toMonth(datetime)

;

create table itmo.cnt_trans_amount_sum_distributed as itmo.cnt_trans_amount_sum
engine = Distributed(ch_cluster, itmo, itmo.cnt_trans_amount_sum)
;
    