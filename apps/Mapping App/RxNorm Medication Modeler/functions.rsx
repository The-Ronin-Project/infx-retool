<GlobalFunctions>
  <RESTQuery
    id="Dose_form_and_dose_form_group"
    enableTransformer={true}
    query="allconcepts.json?tty=DF+DFG"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
let output = data['minConceptGroup']['minConcept']
let name = output.map(x => x.name)
return name"
  />
  <RESTQuery
    id="Ingredients"
    enableTransformer={true}
    query="allconcepts.json?tty=IN+PIN+MIN"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
let output = data['minConceptGroup']['minConcept']
let name = output.map(x => x.name)
return name"
  />
  <SqlQueryUnified
    id="getUsers"
    query={include("./lib/getUsers.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_queue"
    query={include("./lib/load_queue.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_df"
    query={include("./lib/save_df.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_in"
    query={include("./lib/save_in.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_scd"
    query={include("./lib/save_scd.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
