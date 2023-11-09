select pmu.first_last_name, sc.assigned_mapper, count(*) from concept_maps.source_concept sc
join project_management.user pmu on pmu.uuid=sc.assigned_mapper
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and sc.map_status = 'ready for review'
group by pmu.first_last_name, sc.assigned_mapper