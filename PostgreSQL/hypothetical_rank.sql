-- https://www.postgresql.org/docs/9.4/functions-aggregate.html

select gender,
rank(75) within group (order by height_inches desc)
from public.people_heights
group by rollup (gender);
