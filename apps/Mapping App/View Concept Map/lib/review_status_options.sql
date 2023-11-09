select distinct review_status, rc.display
from concept_maps.concept_relationship cr
join concept_maps.source_concept sc 
on sc.uuid=cr.source_concept_uuid
join concept_maps.relationship_codes rc
on cr.relationship_code_uuid = rc.uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}