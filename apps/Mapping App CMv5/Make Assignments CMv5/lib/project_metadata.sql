select * from concept_maps.concept_map_version cmv
join concept_maps.concept_map cm
on cmv.concept_map_uuid = cm.uuid
where cmv.uuid={{ variable0 }}