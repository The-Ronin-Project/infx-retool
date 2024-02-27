select distinct 
  first_last_name, 
  project_management.user.uuid as user_uuid 
from project_management.user
join concept_maps.source_concept_data sc
on project_management.user.uuid = sc.assigned_mapper
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}