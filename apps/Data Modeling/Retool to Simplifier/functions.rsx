<GlobalFunctions>
  <RESTQuery
    id="ConceptMapJSONCall"
    query="ConceptMaps/{{ search.selectedItem.uuid }}/published"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="DeleteConceptMapFromSimplifier"
    bodyType="json"
    headers={
      '[{"key":"Authorization","value":"Bearer {{GetToken.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    query="ConceptMap/{{jsonEditor1.value.id}}"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="DELETE"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                {
                  title:
                    "The ConceptMap {{Search.selectedLabel}} has been removed in Simplifier",
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="DeleteValueSetFromSimplifier"
    bodyType="json"
    headers={
      '[{"key":"Authorization","value":"Bearer {{GetToken.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    query="ValueSet/{{jsonEditor2.value.id}}"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="DELETE"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                {
                  title:
                    "The Valueset {{Search.selectedLabel}} has been removed in Simplifier",
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId=""
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="GetToken"
    body={
      '[{"key":"Email","value":"\\"retooluser@projectronin.com\\""},{"key":"Password","value":"projectronin2022"}]'
    }
    bodyType="json"
    query="https://api.simplifier.net/token"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <RESTQuery
    id="PutConceptMapToSimplifier"
    body="{{JSON.parse(textArea1.value)}}"
    bodyType="raw"
    headers={
      '[{"key":"Authorization","value":"Bearer {{GetToken.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    query="ConceptMap/{{jsonEditor1.value.id}}"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="PUT"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                {
                  title:
                    "The ConceptMap {{JSON.parse(jsonEditor1.value.name)}} has been uploaded to Simplifier",
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="open"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="PutValueSetToSimplifier"
    body="{{jsonEditor2.value}}"
    bodyType="raw"
    headers={
      '[{"key":"Authorization","value":"Bearer {{GetToken.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    query="ValueSet/{{jsonEditor2.value.id}}"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="PUT"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                {
                  title:
                    "The Valueset {{Search.selectedLabel}} has been uploaded to Simplifier",
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="open"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                {
                  title:
                    "The Valueset {{Search.selectedLabel}} failed to upload to Simplifier",
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="ValuesetExpansionCall"
    enableTransformer={true}
    query="ValueSet/{{Search.value}}/$expand"
    queryTimeout="10001"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer={
      '// type your code here\nfilterContains = (data, limit) => {\n    desp = data["description"].replace(\'Initial version\',\'\')\n    data["description"] = desp\n    delete data["additionalData"]\n    contains = data["expansion"]["contains"]\n    contains = contains.slice(0, limit)\n    data["expansion"]["contains"] = contains\n    return JSON.stringify(data)\n}\n\nreturn filterContains(data,50)'
    }
    triggersOnFailure={null}
  />
  <SqlQueryUnified
    id="concept_map_dropdown"
    query={include("./lib/concept_map_dropdown.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="value_set_dropdown"
    query={include("./lib/value_set_dropdown.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
