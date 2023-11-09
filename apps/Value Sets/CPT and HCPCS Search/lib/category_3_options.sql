select DISTINCT category_3 category_name, range 
from cpt.range
where category={{category_select.value}}
and category_2={{category_2_select.value}}
and category_3 is not null
and category_4 is NULL
order by range