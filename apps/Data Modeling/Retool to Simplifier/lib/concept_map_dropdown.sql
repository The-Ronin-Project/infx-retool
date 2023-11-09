with x as (
select distinct concept_map_uuid, max(version) as version 
      from concept_maps.concept_map_version group by concept_map_uuid
) 
select distinct a.concept_map_uuid, a.uuid, x.version, cm.name
from concept_maps.concept_map_version a 
inner join x 
on a.concept_map_uuid=x.concept_map_uuid and a.version=x.version 
inner join concept_maps.concept_map cm
on cm.uuid = a.concept_map_uuid 
where purpose like '%logic%'

--select distinct conmap.*,cm.name,cm.purpose 
--from concept_maps.concept_map cm
--join (select distinct concept_map_uuid,uuid, min(version) as version 
 --     from concept_maps.concept_map_version group by uuid) conmap
--on cm.uuid = conmap.concept_map_uuid 
--where purpose like '%logic%'
--order by cm.name