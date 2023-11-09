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
      pluginId="new_name"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="date_range"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [] }}
      pluginId="fhir_uri"
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
            src: "select_terminology.clearValue\nversion.clearValue\ndate_range.clearValue\nfhir_uri.clearValue\nis_standard.clearValue\nis_fhir.clearValue",
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
</GlobalFunctions>
