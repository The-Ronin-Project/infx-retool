<PlaygroundQuery
  id="getInfoBeforeMapping"
  adhocResourceType={null}
  data={null}
  resourceType="restapi"
>
  <RESTQuery
    allowedGroups={[]}
    enableTransformer={true}
    events={[]}
    importedQueryDefaults={{}}
    importedQueryInputs={{ variable0: "" }}
    privateParams={[]}
    query="RxTerms/rxcui/{{ variable0 }}/allinfo.json"
    queryDisabled={'{{rxcui_input.value == ""}}'}
    retoolVersion="2.95.3"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data['rxtermsProperties']"
    watchedParams={[]}
  />
</PlaygroundQuery>
