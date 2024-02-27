select DISTINCT concat(category_4,' (', category_3, ')') category_name, range 
from cpt.range
where category={{category_select.value}}
and category_2={{category_2_select.value}}
and category_3={{category_3_table.selectedRow.data.category_name}}
and category_4 is not null
order by range