create materialized view itmo.avg_out_amount

engine = AggregatingMergeTree
partition by month
order by user_id
populate

as select
    user_id_out as user_id,
    toMonth(datetime) as month,
    avg(amount) as avg_amount
    
from itmo.transactions

group by 
    user_id_out, 
    toMonth(datetime)

order by 
    toMonth(datetime)

;

create table itmo.avg_out_amount_distributed as itmo.avg_out_amount
engine = Distributed(ch_cluster, itmo, avg_out_amount)
;