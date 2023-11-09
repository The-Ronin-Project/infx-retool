SELECT DISTINCT title, concept_map_uuid FROM concept_maps.concept_map cm
JOIN concept_maps.concept_map_version cmv
ON cm.uuid = cmv.concept_map_uuid
where cmv.status='active'
order by title ASC