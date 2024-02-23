select distinct 
  first_last_name, 
  pmu.uuid as user_uuid 
from project_management.user pmu
join concept_maps.source_concept_data sc
on pmu.uuid = sc.assigned_mapper
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}