select*from concept_maps.concept_map as cm
join (select*from concept_maps.concept_map_version) as mv
on cm.uuid=mv.concept_map_uuid
join(select * from concept_maps.source_concept)as sc 
on mv.uuid=sc.concept_map_version_uuid


