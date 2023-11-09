var requestBody = []
if (pcs_section.value) {
  requestBody.push({
        "property": "code",
        "operator": "in-section",
        "value": pcs_section.value,
        "include": true,
        "terminology_version": version_select.value
    })
}
if (body_system.value) {
  requestBody.push({
        "property": "code",
        "operator": "has-body-system",
        "value": body_system.value,
        "include": true,
        "terminology_version": version_select.value
    })
}
if (root_operation.value) {
  requestBody.push({
    		"property": "code",
        "operator": "has-root-operation",
        "value": root_operation.value,
        "include": true,
        "terminology_version": version_select.value
  })
}
if (body_part.value) {
  requestBody.push({
    		"property": "code",
        "operator": "has-body-part",
        "value": body_part.value,
        "include": true,
        "terminology_version": version_select.value
  })
}
if (approach_select.value){
  requestBody.push({
    	  "property": "code",
        "operator": "has-approach",
        "value": approach_select.value,
        "include": true,
        "terminology_version": version_select.value
  })
}
if (device_select.value){
  requestBody.push({
    	  "property": "code",
        "operator": "has-device",
        "value": device_select.value,
        "include": true,
        "terminology_version": version_select.value
  })
}
if(qualifier_select.value){
  requestBody.push({
    	  "property": "code",
        "operator": "has-qualifier",
        "value": qualifier_select.value,
        "include": true,
        "terminology_version": version_select.value
  }
 );
}
if (exclusions_code.value != "") {
  requestBody.push({
    "property": "code",
    "operator": "in",
    "value": exclusions_code.value.split(","),
    "include": false,
    "terminology_version": version_select.value
  })
}
return requestBody;