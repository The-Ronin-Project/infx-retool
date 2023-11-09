update concept_maps.source_concept
set assigned_reviewer={{reviewer.value}},
mapping_group='random'
where uuid in 
(select uuid from concept_maps.source_concept
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and assigned_reviewer is null
and no_map is null
order by random()
limit {{random_assign_number.value}}
)