SELECT cr.uuid as cr_uuid, cr.*, sc.assigned_reviewer, sc.reason_for_no_map, rc.display, u.first_name || ' ' || u.last_name AS reviewer_name
FROM concept_maps.concept_relationship cr
JOIN concept_maps.source_concept sc
ON cr.source_concept_uuid = sc.uuid
JOIN concept_maps.relationship_codes rc
ON cr.relationship_code_uuid = rc.uuid
left JOIN project_management."user" u
ON sc.assigned_reviewer = u.uuid
where source_concept_uuid = {{mapping_queue.selectedRow.data[0].uuid}}
AND cr.review_status IS DISTINCT FROM 'deleted'