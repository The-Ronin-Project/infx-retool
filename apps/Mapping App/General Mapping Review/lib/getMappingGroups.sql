select distinct mapping_group 
from concept_maps.source_concept
join concept_maps.concept_relationship on concept_relationship.source_concept_uuid = source_concept.uuid
where assigned_mapper={{select_user.value}}
and source_concept.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and map_status = 'ready for review'
and review_status is null