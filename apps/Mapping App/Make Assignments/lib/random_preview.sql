select *, ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected  from concept_maps.source_concept sc
left join custom_terminologies.code ctc on sc.code=ctc.code
and sc.display = ctc.display
and cast(sc.system as uuid) = ctc.terminology_version_uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and sc.assigned_mapper is null
and sc.no_map is null
order by random()
limit {{random_number_input.value}}