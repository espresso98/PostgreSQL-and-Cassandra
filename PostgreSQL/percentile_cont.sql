-- https://www.postgresql.org/docs/9.4/functions-aggregate.html

select 
    percentile_cont(.25) within group (order by height_inches) as "1st quartile",
    percentile_cont(.50) within group (order by height_inches) as "2nd quartile",
    percentile_cont(.75) within group (order by height_inches) as "3rd quartile",
from public.people_heights;
