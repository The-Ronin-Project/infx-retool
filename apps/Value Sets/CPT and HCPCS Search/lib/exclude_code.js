if (exclude_codes.value != '') {
  exclude_codes.setValue(exclude_codes.value + ',' + populate_preview_table.data[i].code);
} else {
  exclude_codes.setValue(populate_preview_table.data[i].code);
}