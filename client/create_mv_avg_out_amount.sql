create materialized view itmo.avg_out_amount

engine = SummingMergeTree
partition by month
order by user_id
populate

as select
    user_id_out as user_id,
    toMonth(datetime) as month,
    avg(amount) as avg_amount
    
from itmo.transactions_distributed

group by 
    user_id_out, 
    toMonth(datetime)

order by 
    toMonth(datetime)

;
    