select distinct mapping_group 
from concept_maps.source_concept
where assigned_mapper={{select_user.value}}