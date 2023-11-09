select cm.title as concept_map_title, vs.title as value_set_title, r.* from data_ingestion.registry r
left join concept_maps.concept_map cm 
on r.concept_map_uuid = cm.uuid
left join value_sets.value_set vs
on r.value_set_uuid = vs.uuid