select value_sets.value_set.* from value_sets.value_set
where lower(title) like '%' || {{filter.value.toLowerCase()}} || '%'
or lower(value_set.description) like '%' || {{filter.value.toLowerCase()}} || '%'
or cast(value_set.uuid as text) = {{filter.value}}
order by value_set.name