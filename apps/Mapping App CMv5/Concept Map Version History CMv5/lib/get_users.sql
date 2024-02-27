select distinct first_last_name, project_management.user.uuid as user_uuid 
from project_management.user
join concept_maps.source_concept_data
on project_management.user.uuid = source_concept_data.assigned_mapper
where source_concept_data.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}