<GlobalFunctions>
  <RESTQuery
    id="create_new_use_case"
    body={
      '[{"key":"name","value":"{{name_input.value}}"},{"key":"description","value":"{{description_input.value}}"},{"key":"point_of_contact","value":"{{current_user.fullName}}"},{"key":"status","value":"{{status_select.value}}"}]'
    }
    bodyType="json"
    query="/usecase/create/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <Function
    id="formatAssociatedTeams"
    funcBody={include("./lib/formatAssociatedTeams.js", "string")}
  />
  <RESTQuery
    id="get_associated_teams"
    query="/teams/linked_use_cases?use_case_uuid={{all_use_cases_table.selectedRow.uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="get_use_cases"
    query="usecase/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="get_value_sets"
    query="ValueSets/by_use_cases?use_case_uuid={{all_use_cases_table.selectedSourceRow.uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
