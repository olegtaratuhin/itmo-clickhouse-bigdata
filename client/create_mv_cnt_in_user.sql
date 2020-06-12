create materialized view itmo.cnt_in_user

engine = AggregatingMergeTree()
partition by month
order by user_id
populate

as select
    user_id_in as user_id,
    toMonth(datetime) as month,
    countState(user_id_in) as cnt
    
from itmo.transactions

group by 
    user_id_in,
    toMonth(datetime)

order by 
    toMonth(datetime)

;

create table itmo.cnt_in_user_distributed as itmo.cnt_in_user
engine = Distributed(ch_cluster, itmo, cnt_in_user)
;