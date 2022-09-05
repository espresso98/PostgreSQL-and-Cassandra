select distinct customer_id,
    first_value(order_date) over 
        (partition by customer_id
        order by order_date
        rows between unbounded preceding and unbounded following) 
        as first_order_date,
    last_value(order_date) over 
        (partition by customer_id
        order by order_date
        rows between unbounded preceding and unbounded following) 
        as last_order_date,
from sales.orders
order by customer_id;