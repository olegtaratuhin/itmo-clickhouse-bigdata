create materialized view itmo.avg_in_amount

engine = SummingMergeTree
partition by month
order by user_id
populate

as select
    user_id_in as user_id,
    toMonth(datetime) as month,
    avg(amount) as avg_amount
    
from itmo.transactions_distributed

group by 
    user_id_in, 
    toMonth(datetime)

order by 
    toMonth(datetime)

;
