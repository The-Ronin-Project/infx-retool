SELECT 
  cr.uuid as cr_uuid, 
  cr.*, 
  sc.assigned_reviewer, 
  sc.reason_for_no_map, 
  rc.display, 
  pmu.first_last_name AS reviewer_name,
  pmm.first_last_name As mapper_name
FROM concept_maps.concept_relationship_data cr
JOIN concept_maps.source_concept_data sc
  ON cr.source_concept_uuid = sc.uuid
JOIN concept_maps.relationship_codes rc
  ON cr.relationship_code_uuid = rc.uuid
left JOIN project_management.user pmu
  ON sc.assigned_reviewer = pmu.uuid
left JOIN project_management.user pmm
  ON sc.assigned_mapper = pmm.uuid
where cr.source_concept_uuid = {{mapping_queue.selectedRow.data[0].uuid}}