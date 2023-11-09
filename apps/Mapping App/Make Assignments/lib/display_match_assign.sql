update concept_maps.source_concept
set assigned_mapper={{mapper_select2.value}}, assigned_reviewer={{reviewer_select2.value}},
mapping_group={{match_query.value}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and (lower(display) like lower({{match_query.value}})
or lower(code) like lower({{match_query.value}}))
and assigned_mapper is null