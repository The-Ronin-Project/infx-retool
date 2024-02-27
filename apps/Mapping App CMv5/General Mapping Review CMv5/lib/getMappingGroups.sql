select distinct mapping_group 
from concept_maps.source_concept_data sc
join concept_maps.concept_relationship_data cr on cr.source_concept_uuid = sc.uuid
where sc.assigned_mapper={{select_user.value}}
and sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and sc.map_status = 'ready for review'
and cr.review_status is null