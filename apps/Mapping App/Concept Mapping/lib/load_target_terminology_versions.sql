select version, uuid
from public.terminology_versions 
where uuid in 
(select terminology_version_uuid 
 from concept_maps.concept_map_version_terminologies 
 where concept_map_version_uuid = {{urlparams.uuid}} and terminology = {{target_terminology.value}} and context = 'target_terminology')