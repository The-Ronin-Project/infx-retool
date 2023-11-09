select pmu.uuid as mapper_uuid, pmu.first_last_name as assigned_mapper, pmu2.uuid as reviewer_uuid, pmu2.first_last_name as assigned_reviewer, mapping_group, count(*)
from concept_maps.source_concept
left join project_management.user pmu
on pmu.uuid = assigned_mapper
left join project_management.user pmu2
on assigned_reviewer = pmu2.uuid
join concept_maps.concept_relationship cr on source_concept.uuid = source_concept_uuid 
where source_concept.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and review_status is null or review_status != 'reviewed'
group by cr.review_status, pmu.uuid, pmu.first_last_name, pmu2.uuid, pmu2.first_last_name, mapping_group