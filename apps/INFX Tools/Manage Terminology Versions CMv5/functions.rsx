<GlobalFunctions>
  <RESTQuery
    id="add_new_terminology"
    body={
      '[{"key":"terminology","value":"{{new_name.value}}"},{"key":"version","value":"{{version.value}}"},{"key":"effective_start","value":"{{date_range.value.start}}"},{"key":"effective_end","value":"{{date_range.value.end}}"},{"key":"fhir_uri","value":"{{fhir_uri.value}}"},{"key":"is_standard","value":"{{is_standard.value}}"},{"key":"fhir_terminology","value":"{{is_fhir.value}}"}]'
    }
    bodyType="json"
    query="terminology/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="new_nameOLD"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="date_rangeOLD"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [] }}
      pluginId="fhir_uriOLD"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_terminologies"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="add_new_version"
    body={
      '[{"key":"","value":""},{"key":"previous_terminology_version_uuid","value":"{{terminologies.selectedRow.data.uuid}}"},{"key":"version","value":"{{ new_version.value }}"},{"key":"effective_start","value":"{{ version_dates.value.start }}"},{"key":"effective_end","value":"{{ version_dates.value.end }}"}]'
    }
    bodyType="json"
    query="terminology/new_version_from_previous"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <SqlQueryUnified
    id="add_terminology"
    actionType="INSERT"
    changeset={
      '[{"key":"uuid","value":"{{uuid.v4()}}"},{"key":"terminology","value":"{{new_name.value}}"},{"key":"version","value":"{{version.value}}"},{"key":"effective_start","value":"{{date_range.value.start}}"},{"key":"effective_end","value":"{{date_range.value.end}}"},{"key":"fhir_uri","value":"{{fhir_uri.value}}"},{"key":"is_standard","value":"{{is_standard.value}}"},{"key":"fhir_terminology","value":"{{is_fhir.value}}"}]'
    }
    editorMode="gui"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="terminology_versions"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: "select_terminology.clearValue\nversionOLD.clearValue\ndate_rangeOLD.clearValue\nfhir_uriOLD.clearValue\nis_standardOLD.clearValue\nis_fhirOLD.clearValue",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_terminologies"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="check_existing_row_fhir_uri_and_version"
    query={include(
      "./lib/check_existing_row_fhir_uri_and_version.sql",
      "string"
    )}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="edit_end_date"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="uuid"
    changeset={
      '[{"key":"effective_end","value":"{{terminologies.selectedRow.data.effective_end}}"}]'
    }
    editorMode="gui"
    records="{{terminologies.recordUpdates}}"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="terminology_versions"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="load_terminologies"
    query={include("./lib/load_terminologies.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    tableName="terminology_versions"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="new_term_version"
    actionType="INSERT"
    changeset={
      '[{"key":"uuid","value":"{{uuid.v4()}}"},{"key":"terminology","value":"{{terminologies.selectedRow.data.terminology}}"},{"key":"version","value":"{{new_version.value}}"},{"key":"effective_start","value":"{{version_dates.value.start}}"},{"key":"effective_end","value":"{{version_dates.value.end}}"},{"key":"fhir_uri","value":"{{terminologies.selectedRow.data.fhir_uri}}"},{"key":"is_standard","value":"{{terminologies.selectedRow.data.is_standard}}"},{"key":"fhir_terminology","value":"{{terminologies.selectedRow.data.fhir_terminology}}"}]'
    }
    editorMode="gui"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="terminology_versions"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="fhir_elementChangeHandler"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
  />
  <RESTQuery
    id="get_resource_types"
    enableTransformer={true}
    headers={
      '[{"key":"Authorization","value":"Bearer {{get_simplifier_token.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    isMultiplayerEdited={false}
    query="StructureDefinition?_count=500"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    transformer="function getOrderedSet(set) {
  const orderedArray = Array.from(set);
  orderedArray.sort();
  return orderedArray;
}

let resourceTypes = [];
for (let [key, value] of Object.entries(data)) {
  if (key === 'entry') {
    let resources = value;
    for (let i = 0; i < resources.length; i++) {
      if (resources[i].resource && resources[i].resource.type !== null) {
        resourceTypes.push(resources[i].resource.type);
      }
    }
  }
}
const resourceTypesSet = new Set(resourceTypes);
const orderedResourceTypes = getOrderedSet(resourceTypesSet);
return orderedResourceTypes;"
  />
  <RESTQuery
    id="get_simplifier_token"
    body={
      '[{"key":"Email","value":"\\"retooluser@projectronin.com\\""},{"key":"Password","value":"\\"projectronin2022\\""}]'
    }
    bodyType="json"
    query="https://api.simplifier.net/token"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenPageLoads={true}
    type="POST"
  />
</GlobalFunctions>
