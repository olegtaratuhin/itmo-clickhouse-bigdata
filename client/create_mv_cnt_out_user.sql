create materialized view itmo.cnt_out_user

engine = AggregatingMergeTree()
partition by month
order by user_id
populate

as select
    user_id_out as user_id,
    toMonth(datetime) as month,
    count(user_id_out) as cnt
    
from itmo.transactions_distributed

group by 
    user_id_out,
    toMonth(datetime)

order by 
    toMonth(datetime)

;
    