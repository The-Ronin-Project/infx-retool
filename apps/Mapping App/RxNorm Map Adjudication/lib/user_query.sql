select distinct first_last_name, project_management.user.uuid as user_uuid from project_management.user
join concept_maps.source_concept on project_management.user.uuid = source_concept.assigned_reviewer
where concept_map_version_uuid = '48b241d3-1c18-496b-8ae6-1c97e97b6813'