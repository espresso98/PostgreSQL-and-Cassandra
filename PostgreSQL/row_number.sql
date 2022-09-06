select sku, product_name, size,
	row_number() over (partition by product_name order by sku)
from inventory.products;