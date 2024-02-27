if (exclusions_code.value != '') {
  exclusions_code.setValue(exclusions_code.value + ',' + final_code_search.data.loinc_num[i]);
} else {
  exclusions_code.setValue(final_code_search.data.loinc_num[i]);
}