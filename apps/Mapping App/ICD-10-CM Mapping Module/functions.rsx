<GlobalFunctions>
  <SqlQueryUnified
    id="code_includes_and_excludes"
    query={include("./lib/code_includes_and_excludes.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_icd_10_cm_versions"
    importedQueryInputs={{ ordered: [{ terminology: "ICD-10 CM" }] }}
    isImported={true}
    playgroundQueryId={37}
    playgroundQueryUuid="e69988f8-38f5-4d49-a772-16830ebdd669"
    query={include("./lib/load_icd_10_cm_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="map"
    query={include("./lib/map.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <ElasticSearchQuery
    id="search_keyword"
    query={include("./lib/search_keyword.json5", "string")}
    resourceDisplayName="ElasticSearch"
    resourceName="3e68115b-9776-4956-86b4-f468d2d1f836"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
