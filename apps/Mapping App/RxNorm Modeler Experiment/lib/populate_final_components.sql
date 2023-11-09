select * from rxnorm_extension.semantic_clinical_drug_component
where uuid = ANY({{ selected_component.value }})