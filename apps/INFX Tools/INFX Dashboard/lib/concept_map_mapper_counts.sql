select count(sc.assigned_mapper), cm.title, cmv.uuid as version_uuid from concept_maps.source_concept sc
join concept_maps.concept_map_version cmv on sc.concept_map_version_uuid = cmv.uuid
join concept_maps.concept_map cm on cmv.concept_map_uuid = cm.uuid
where sc.map_status = 'pending'
and sc.assigned_mapper = {{current_user_uuid.data.uuid[0]}}
group by sc.concept_map_version_uuid, cm.title, cmv.uuid
order by count DESC