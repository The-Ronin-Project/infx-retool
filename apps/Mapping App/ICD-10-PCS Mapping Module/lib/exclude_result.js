if (exclusions_code.value != '') {
  exclusions_code.setValue(exclusions_code.value + ',' + populate_rule_preview.data[i].code);
} else {
  exclusions_code.setValue(populate_rule_preview.data[i].code);
}