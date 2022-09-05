-- Calculate a moving average with a sliding window

select distinct order_id,
    sum(order_id) 
        over (order by order_id rows between 0 preceding and 2 following)
        as "3 pereiod leading sum",
    sum(order_id) 
        over (order by order_id rows between 2 preceding and 0 following)
        as "3 pereiod trailing sum",
    avg(order_id) 
        over (order by order_id rows between 1 preceding and 1 following)
        as "3 pereiod moving average"
from sales.orders;