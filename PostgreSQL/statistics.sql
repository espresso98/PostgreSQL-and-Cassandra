select category_id,
	min(price) as "min price",
	percentile_cont(.25) within group (order by price) as "1st quartile",
	percentile_cont(.50) within group (order by price) as "2nd quartile",
	percentile_cont(.75) within group (order by price) as "3rd quartile",
	max(price) as "max price",
	max(price) - min(price) as "price range"
from inventory.products
group by rollup (category_id);