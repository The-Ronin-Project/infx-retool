select cm.*, 
  TO_CHAR(TO_TIMESTAMP(created_date, 'YYYY-MM-DD HH24:MI:SS.US'), 'DD Month YYYY') AS formatted_created_date, 
  vs1.title as source_value_set_title, 
  vs2.title as target_value_set_title,
  ARRAY_AGG(distinct uc.name) as use_case_array,
  ARRAY_AGG(distinct dir.tenant_id) as tenant_array
from concept_maps.concept_map cm
join value_sets.value_set vs1
  on cm.source_value_set_uuid = vs1.uuid
join value_sets.value_set vs2
  on cm.target_value_set_uuid = vs2.uuid
left join project_management.use_case uc 
  on uc.uuid = cm.use_case_uuid
left join data_ingestion.registry dir
  on dir.concept_map_uuid = cm.uuid
where 
  (lower(cm.title) like '%' || {{filter.value.toLowerCase()}} || '%'
  or lower(cm.description) like '%' || {{filter.value.toLowerCase()}} || '%')
  and (cm.experimental is false or {{test_content_switch.value}})
GROUP BY 
  cm.uuid, vs1.title, vs2.title
order by 
  cm.title