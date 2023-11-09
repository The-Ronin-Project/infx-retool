var requestBody = []
if (selected_ranges.value) {
  requestBody.push({
        "property": "code",
        "operator": "in",
        "value": selected_ranges.value,
        "include": true,
        "terminology_version": cpt_version_select.value
    })
}
if (search_string.value != "") {
  requestBody.push({
        "property": "display",
        "operator": "regex",
        "value": search_string.value,
        "include": keyword_search_include.value == 'Include' ? true : false,
        "terminology_version": cpt_version_select.value
    }
  );
}
if (exclude_codes.value != "") {
  requestBody.push({
    "property": "code",
    "operator": "in",
    "value": exclude_codes.value.split(","),
    "include": false,
    "terminology_version": cpt_version_select.value
  })
}
return requestBody;