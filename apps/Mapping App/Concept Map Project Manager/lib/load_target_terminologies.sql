SELECT * FROM public.terminology_versions where uuid in (
SELECT terminology_version_uuid FROM concept_maps.concept_map_version_terminologies where concept_map_version_uuid = {{urlparams.uuid}})