select * from concept_maps.concept_map
where lower(title) like '%' || {{filter.value.toLowerCase()}} || '%'
or lower(description) like '%' || {{filter.value.toLowerCase()}} || '%'
order by name