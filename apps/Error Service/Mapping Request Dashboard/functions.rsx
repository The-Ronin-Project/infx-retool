<GlobalFunctions>
  <RESTQuery
    id="get_concept_map_with_outstanding_rows"
    query="https://infx-internal.prod.projectronin.io/data_normalization/outstanding_mapping_rows"
    queryTimeout="120000"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="load_to_concept_map"
    body={
      '[{"key":"concept_map_uuid","value":"{{concept_map_overview_table.selectedRow.data.concept_map_uuid}}"}]'
    }
    bodyType="json"
    query="data_normalization/actions/load_outstanding_codes_to_concept_map"
    queryTimeout="60000"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  />
  <SqlQueryUnified
    id="recent_concept_maps"
    query={include("./lib/recent_concept_maps.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
</GlobalFunctions>
