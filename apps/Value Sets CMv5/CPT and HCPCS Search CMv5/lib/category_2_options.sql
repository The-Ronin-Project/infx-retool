select DISTINCT category_2 category_name, range, concat(category_2, ' ', range) name_range 
from cpt.range
where category={{category_select.value}}
and category_2 is not null
and category_3 is NULL
and category_4 is NULL
order by range