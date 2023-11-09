update concept_maps.source_concept
set assigned_reviewer={{reviewer.value}},
mapping_group={{query.value}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and lower(display) like {{query.value}}