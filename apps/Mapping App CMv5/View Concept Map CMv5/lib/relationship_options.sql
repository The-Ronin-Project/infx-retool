select distinct 
  relationship_code_uuid, 
  rc.display
from concept_maps.concept_relationship_data cr
join concept_maps.source_concept_data sc 
  on sc.uuid=cr.source_concept_uuid
join concept_maps.relationship_codes rc
  on cr.relationship_code_uuid = rc.uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}