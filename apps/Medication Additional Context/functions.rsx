<GlobalFunctions>
  <RESTQuery
    id="rxnorm_reference_info"
    body={'[{"key":"source_code","value":"{{source_code.value}}"}]'}
    bodyType="json"
    enableTransformer={true}
    query="/ConceptMaps/reference_data/RxNorm"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data
"
    type="POST"
  />
</GlobalFunctions>
