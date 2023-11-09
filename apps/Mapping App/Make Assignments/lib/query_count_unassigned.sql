select count(*) match_count from concept_maps.source_concept
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and (lower(display) like any({{transform_query_match.value.split(",")}})
or lower(code) like any({{transform_query_match.value.split(",")}}))
and assigned_mapper is null
and map_status = 'pending'