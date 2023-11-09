select count(sc.assigned_reviewer),pmu.first_last_name, cm.title from concept_maps.source_concept sc
join concept_maps.concept_map_version cmv on sc.concept_map_version_uuid = cmv.uuid
join concept_maps.concept_map cm on cmv.concept_map_uuid = cm.uuid
join project_management.user pmu on pmu.uuid = assigned_mapper
where sc.map_status = 'ready for review'
group by sc.concept_map_version_uuid,pmu.first_last_name, cm.title
order by count DESC