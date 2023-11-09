select cr.reviewed_by, count(cr.reviewed_by) from concept_maps.source_concept sc
join project_management.user pmu on pmu.uuid=sc.assigned_reviewer
join concept_maps.concept_relationship cr on sc.uuid = cr.source_concept_uuid
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
group by cr.reviewed_by