select cr.reviewed_by, count(cr.reviewed_by) from concept_maps.source_concept sc
join project_management.user pmu on pmu.uuid=sc.assigned_mapper
join concept_maps.concept_relationship cr on sc.uuid = cr.source_concept_uuid
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and pmu.first_last_name != cr.reviewed_by
group by cr.reviewed_by