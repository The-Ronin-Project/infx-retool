<GlobalFunctions>
  <JavascriptQuery
    id="extractRxcui"
    query={include("./lib/extractRxcui.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getClassMembers"
    query="classMembers.json?classId={{ClassID.value}}&relaSource={{select_source.value}}&rela={{select_rela.value}}&trans={{trans.value}}&ttys={{term_type.value}}"
    resourceDisplayName="RxClass API"
    resourceName="ceb5b54b-79db-4774-a5d6-ee2663b7c0bb"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getRelas"
    query="relas.json?relaSource={{select_source.value}}"
    resourceDisplayName="RxClass API"
    resourceName="ceb5b54b-79db-4774-a5d6-ee2663b7c0bb"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getSourcesofDrugClassRelations"
    query="relaSources.json"
    resourceDisplayName="RxClass API"
    resourceName="ceb5b54b-79db-4774-a5d6-ee2663b7c0bb"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getTermTypes"
    query="termtypes.json"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query5"
    resourceDisplayName="RxClass API"
    resourceName="ceb5b54b-79db-4774-a5d6-ee2663b7c0bb"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
