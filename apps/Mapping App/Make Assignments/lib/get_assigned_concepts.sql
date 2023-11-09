select sc.code, sc.display, pmu.uuid as mapper_uuid, pmu.first_last_name as assigned_mapper, pmu2.uuid as reviewer_uuid, pmu2.first_last_name as assigned_reviewer from concept_maps.source_concept sc
left join project_management.user pmu on pmu.uuid = sc.assigned_mapper
left join project_management.user pmu2 on assigned_reviewer = pmu2.uuid
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and sc.assigned_mapper is not NULL
