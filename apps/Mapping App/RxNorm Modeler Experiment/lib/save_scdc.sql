Insert into rxnorm_extension.semantic_clinical_drug_component
Values (uuid_generate_v4(), {{ingredient_table.selectedRow.data.display +' '+search_strength.value +'  '+unit_select.value}}, {{ingredient_table.selectedRow.data.uuid}}, false, null, {{search_strength.value + ' '+unit_select.value}})