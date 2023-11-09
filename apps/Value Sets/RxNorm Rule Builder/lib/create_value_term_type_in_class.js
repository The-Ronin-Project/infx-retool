var rule_value = {
  'rela_source': classification_source.value,
  'class_id': drug_class_id_input.value,
  'rela': relationship.value,
  'trans': trans.value,
  'term_type': term_type_input.value
};
return JSON.stringify(rule_value);