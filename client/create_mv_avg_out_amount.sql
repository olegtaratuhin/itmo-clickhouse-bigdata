create view avg_out_amount as 
    
    select user_id_out, toMonth(datetime), avg(amount)
    from itmo.transactions_distributed
    group by user_id_out, toMonth(datetime)
    order by toMonth(datetime)

;
    