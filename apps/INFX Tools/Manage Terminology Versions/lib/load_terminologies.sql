select * from public.terminology_versions
WHERE ({{!search.value}} or lower (terminology) like '%' || {{search.value.toLowerCase()}} || '%')
order by terminology
