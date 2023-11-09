select count(*), pmu.first_last_name, pmu.uuid from concept_maps.source_concept
join project_management.user pmu
on pmu.uuid = assigned_mapper
where concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
group by pmu.first_last_name, pmu.uuid
order by count desc