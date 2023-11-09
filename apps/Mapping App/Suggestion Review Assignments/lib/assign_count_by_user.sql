select count(*), pmu.first_last_name from concept_maps.source_concept
join project_management.user pmu
on pmu.uuid = assigned_reviewer
where concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
group by pmu.first_last_name