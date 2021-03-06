create materialized view itmo.avg_in_amount

engine = AggregatingMergeTree
partition by month
order by user_id
populate

as 
    select
        user_id_in as user_id,
        toMonth(datetime) as month,
        avgState(amount) as avg_amount
    from itmo.transactions

    group by 
        user_id_in, 
        toMonth(datetime)
;

create table itmo.avg_in_amount_distributed as itmo.avg_in_amount
engine = Distributed(ch_cluster, itmo, avg_in_amount)
;
