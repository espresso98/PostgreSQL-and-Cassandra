select product_name, category_id, size, price,
	dense_rank() over (order by price desc) as "rank overall",
	dense_rank() over (partition by category_id order by price desc) as "rank category",
	dense_rank() over (partition by size order by price desc) as "rank price"
from inventory.products
order by category_id, price desc;