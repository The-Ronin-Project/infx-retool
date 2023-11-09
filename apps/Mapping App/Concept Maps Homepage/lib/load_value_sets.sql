select * from value_sets.value_set
where lower(title) like '%' || {{filter.value.toLowerCase()}} || '%'
or lower(description) like '%' || {{filter.value.toLowerCase()}} || '%'
order by name