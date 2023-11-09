select distinct first_last_name, project_management.user.uuid as user_uuid 
from project_management.user
join concept_maps.source_concept 
on project_management.user.uuid = source_concept.assigned_reviewer
where source_concept.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}