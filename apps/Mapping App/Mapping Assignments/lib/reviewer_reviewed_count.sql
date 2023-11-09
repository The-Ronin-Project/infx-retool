select pmu.first_last_name, sc.assigned_reviewer, count(*) from concept_maps.source_concept sc
join concept_maps.concept_relationship cr on sc.uuid = cr.source_concept_uuid
join project_management.user pmu on pmu.uuid=sc.assigned_reviewer
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and cr.review_status = 'reviewed'
group by pmu.first_last_name, sc.assigned_reviewer