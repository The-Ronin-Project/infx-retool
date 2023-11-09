update concept_maps.source_concept
set assigned_mapper={{mapper2.value}}, assigned_reviewer={{reviewer2.value}},
mapping_group={{"random " + (new Date().toString())}}
where uuid in 
(select uuid from concept_maps.source_concept
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and assigned_mapper is null
and no_map is null
order by random()
limit {{random_assign_number.value}}
)