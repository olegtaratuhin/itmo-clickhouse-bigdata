create materialized view itmo.trans_amount_sum

engine = AggregatingMergeTree()
partition by month
order by user_id
populate

as select
    user_id_out as user_id,
    toMonth(datetime) as month,
    sumState(amount) - sumState(amount) as trans_sum

from itmo.transactions

group by 
    user_id_out,
    toMonth(datetime)

order by 
    toMonth(datetime)

;

create table itmo.trans_amount_sum_distributed as itmo.trans_amount_sum
engine = Distributed(ch_cluster, itmo, trans_amount_sum)
;
    