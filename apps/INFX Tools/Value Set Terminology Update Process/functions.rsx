<GlobalFunctions>
  <RESTQuery
    id="get_reports"
    query="/TerminologyUpdate/ValueSets/report?terminology_fhir_uri={{terminology_select.value}}&exclude_version={{get_versions.data.version[0]}}"
    queryTimeout="120000"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="get_versions"
    query={include("./lib/get_versions.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="update_selected_row"
    body={
      '[{"key":"old_terminology_version_uuid","value":"{{get_versions.data.uuid[1]}}"},{"key":"new_terminology_version_uuid","value":"{{get_versions.data.uuid[0]}}"},{"key":"new_value_set_effective_start","value":"{{get_versions.data.effective_start[0]}}"},{"key":"new_value_set_effective_end","value":"{{get_versions.data.effective_end[0]}}"},{"key":"new_value_set_description","value":"Updated for {{get_versions.data.terminology[0]}}, {{get_versions.data.version[0]}}  update"}]'
    }
    bodyType="json"
    headers="[]"
    query="ValueSets/{{valuesets_ready_for_update_table.selectedRow.data.value_set_uuid}}/actions/perform_terminology_update"
    queryTimeout="120000"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
</GlobalFunctions>
