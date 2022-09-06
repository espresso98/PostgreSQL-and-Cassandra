select order_id,
	customer_id,
	order_date,
	lag(order_date, 1) over(partition by customer_id order by order_id)
		as "previous order date",
	lead (order_date, 1) over(partition by customer_id order by order_id)
		as "next order",
	lead (order_date, 1) over(partition by customer_id order by order_id) -
		order_date as "time between orders"
from sales.orders
order by customer_id, order_date;