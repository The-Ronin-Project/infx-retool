select pmu.first_last_name, sc.assigned_reviewer, count(*) from concept_maps.source_concept_data sc
join concept_maps.concept_relationship_data cr on sc.uuid = cr.source_concept_uuid
join project_management.user pmu on pmu.uuid=sc.assigned_reviewer
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and (cr.review_status is null or cr.review_status = 'ready for review')
group by pmu.first_last_name, sc.assigned_reviewer