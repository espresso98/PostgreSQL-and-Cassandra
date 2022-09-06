select sku, product_name, category_id,
	case
		when category_id = 1 then 'Olive Oils'
		when category_id = 2 then 'Flavor Infused Oils'
		when category_id = 3 then 'Bath and Beauty'
		else 'category unknown'
	end as "category description",
	size, price
from inventory.products;