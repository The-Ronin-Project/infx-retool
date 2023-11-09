<GlobalFunctions>
  <SqlQueryUnified
    id="count_mapped"
    query={include("./lib/count_mapped.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="count_no_map_reviewed"
    query={include("./lib/count_no_map_reviewed.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="count_reviewed"
    query={include("./lib/count_reviewed.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="count_total"
    query={include("./lib/count_total.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="metadata"
    importedQueryInputs={{
      ordered: [{ variable0: "{{urlparams.concept_map_version_uuid}}" }],
    }}
    isImported={true}
    playgroundQueryId={56}
    playgroundQueryName="concept_map_version_metadata"
    playgroundQueryUuid="cdbb3eca-175f-4e0a-9c90-36c767ad88c4"
    query={include("./lib/metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.95.3"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="navigate_to_mapper"
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      enabled="{{metadata.data.target_value_set_uuid=='139b3b16-70c0-443a-86d1-db3dc640d063'}}"
      event="success"
      method="openApp"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "concept_map_version_uuid" },
                        { value: "{{urlparams.concept_map_version_uuid}}" },
                      ],
                    },
                  ],
                },
              ],
            },
          },
          { uuid: "acbbd180-308f-11ed-a0d2-97f043728495" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{metadata.data.target_value_set_uuid!=='139b3b16-70c0-443a-86d1-db3dc640d063'}}"
      event="success"
      method="openApp"
      params={{
        ordered: [
          { uuid: "184659c0-4e4f-11ed-8a53-4f14117ffdcc" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "concept_map_version_uuid" },
                        { value: "{{urlparams.concept_map_version_uuid}}" },
                      ],
                    },
                  ],
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
  </JavascriptQuery>
  <JavascriptQuery
    id="navigate_to_review"
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      enabled="{{metadata.data.target_value_set_uuid=='139b3b16-70c0-443a-86d1-db3dc640d063'}}"
      event="success"
      method="openApp"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "concept_map_version_uuid" },
                        { value: "{{urlparams.concept_map_version_uuid}}" },
                      ],
                    },
                  ],
                },
              ],
            },
          },
          { uuid: "bea37d00-44dd-11ed-908b-eb3e8eafc0fa" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{metadata.data.target_value_set_uuid!=='139b3b16-70c0-443a-86d1-db3dc640d063'}}"
      event="success"
      method="openApp"
      params={{
        ordered: [
          { uuid: "afb4d380-50cb-11ed-b76c-ffbcb400100c" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "concept_map_version_uuid" },
                        { value: "{{urlparams.concept_map_version_uuid}}" },
                      ],
                    },
                  ],
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
  </JavascriptQuery>
</GlobalFunctions>
