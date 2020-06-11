create view avg_in_amount as 
    
    select user_id_in, toMonth(datetime), avg(amount)
    from itmo.transactions_distributed
    group by user_id_in, toMonth(datetime)
    order by toMonth(datetime)

;
    