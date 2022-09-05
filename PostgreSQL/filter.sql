select caterogy_id,
    count(*) as "count all"
    avg(price) as "average price",
    count(*) filter (where size <= 16) as "count small",
    avg(price) filter (where size <= 16) as "average price small", 
    count(*) filter (where size > 16) as "count large",
    avg(price) filter (where size > 16) as "average price large"    
from inverntory.products
group by rollup (category_id)
order by category_id;