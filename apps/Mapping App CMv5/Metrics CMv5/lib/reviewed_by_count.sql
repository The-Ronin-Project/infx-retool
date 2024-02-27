select cr.reviewed_by, count(cr.reviewed_by) from concept_maps.source_concept_data sc
join project_management.user pmu on pmu.uuid=sc.assigned_reviewer
join concept_maps.concept_relationship_data cr on sc.uuid = cr.source_concept_uuid
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
group by cr.reviewed_by