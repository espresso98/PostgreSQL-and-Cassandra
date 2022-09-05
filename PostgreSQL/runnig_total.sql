select o.order_id,
    o.line_id,
    o.sku,
    o.quantity,
    p.price as "price each",
    o.quantity * p.price as "line total",
    sum(o.quantity * p.price) over parition by order_id) as "order total",
    sum(o.quantity * p.price order by line_id) over parition by order_id) as "running total"
from sales.order_lines o inner join inverntory.products p
on order_lines.sku = products.sku