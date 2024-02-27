select *, ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected  from concept_maps.source_concept_data sc
left join custom_terminologies.code ctc on (CASE  
                                              WHEN sc.code_simple IS NOT NULL THEN sc.code_simple  
                                              ELSE sc.code_jsonb->>'code'  
                                            END) = ctc.code
and sc.display = ctc.display
and cast(sc.system_uuid as uuid) = ctc.terminology_version_uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and sc.assigned_mapper is null
and sc.no_map is null
order by random()
limit {{random_number_input.value}}