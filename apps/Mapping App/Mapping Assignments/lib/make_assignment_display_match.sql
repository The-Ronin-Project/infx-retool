update concept_maps.source_concept
set assigned_mapper={{mapper.value}}, assigned_reviewer={{reviewer.value}},
mapping_group={{query.value}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and (lower(display) like any({{transform_query.value.split(",")}})
or lower(code) like any({{transform_query.value.split(",")}}))
and assigned_mapper is null