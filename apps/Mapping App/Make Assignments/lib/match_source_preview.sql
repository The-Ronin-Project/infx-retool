select *, ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected from concept_maps.source_concept sc
left join custom_terminologies.code ctc on sc.code=ctc.code
and sc.display = ctc.display
and cast(sc.system as uuid) = ctc.terminology_version_uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and (lower(sc.display) like any({{transform_query_match.value.split(",")}})
or lower(sc.code) like any({{transform_query_match.value.split(",")}}))
and sc.assigned_mapper is null
and sc.map_status = 'pending'