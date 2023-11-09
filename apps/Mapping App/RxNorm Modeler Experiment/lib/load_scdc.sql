select display, strength, uuid from rxnorm_extension.semantic_clinical_drug_component
where display like {{'%'+ingredient_table.selectedRow.data.display+'%'}}