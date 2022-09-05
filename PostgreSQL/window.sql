select sku,
    product_name,
    category_id,
    size,
    price,
    avg(price) over (xyz),
    min(price) over (xyz),
    max(price) over (xyz)
from inventory.products
window xyz as (partition by size)
order by sku, size;
