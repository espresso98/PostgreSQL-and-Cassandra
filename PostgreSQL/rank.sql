select name, height_inches, gender,
	rank() over (partition by gender order by height_inches desc),
	dense_rank() over (partition by gender order by height_inches desc)
from public.people_heights
order by gender, height_inches desc;