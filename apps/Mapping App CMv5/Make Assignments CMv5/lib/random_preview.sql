select *  
from concept_maps.source_concept_data sc   
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}  
and sc.assigned_mapper is null  
and sc.no_map is null  
order by random()  
limit {{random_number_input.value}}  