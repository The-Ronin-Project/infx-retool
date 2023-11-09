select distinct pm.first_last_name, pm.uuid
from project_management.user pm
join concept_maps.source_concept sc 
on sc.assigned_mapper=pm.uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}