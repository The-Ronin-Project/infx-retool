<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" paddingType="normal" sticky={false} type="main">
    <Alert
      id="alert1"
      description="To make changes, create a new version"
      hidden="{{!(load_metadata.data.status == 'active' || load_metadata.data.status == 'retired')}}"
      title="{{load_metadata.data.title}} is already published"
      type="success"
    />
    <Text
      id="text1"
      value="**Publish function not available right now.**"
      verticalAlign="center"
    />
    <Button
      id="publish"
      disabled="true"
      hidden="{{!(current_user.groups.map(group => group.name).includes('INFX'))}}"
      styleVariant="solid"
      text="Publish {{load_metadata.data.title}}, Version {{load_metadata.data.version}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="publish_concept_map"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="metadata_table"
      _columns={[
        "title",
        "status",
        "Custom Column 1",
        "Custom Column 2",
        "concept_map_uuid",
        "uuid",
        "description",
        "comments",
        "created_date",
        "version",
        "published_date",
        "source_value_set_version_uuid",
        "target_value_set_version_uuid",
        "count_loaded_concepts",
        "name",
        "publisher",
        "author",
        "purpose",
        "experimental",
        "include_self_map",
        "source_value_set_uuid",
        "target_value_set_uuid",
        "use_case_uuid",
        "auto_advance_mapping",
        "auto_fill_search",
        "show_target_codes",
      ]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnVisibility={{
        ordered: [
          { include_self_map: false },
          { auto_advance_mapping: false },
          { created_date: false },
          { experimental: false },
          { source_value_set_uuid: false },
          { author: false },
          { migrate: false },
          { name: false },
          { source_value_set_version_uuid: false },
          { use_case_uuid: false },
          { status: false },
          { target_value_set_uuid: false },
          { auto_fill_search: false },
          { comments: false },
          { concept_map_uuid: false },
          { count_loaded_concepts: false },
          { version: false },
          { title: false },
          { show_target_codes: false },
          { target_value_set_version_uuid: false },
          { uuid: false },
          { publisher: false },
          { description: false },
          { purpose: false },
          { published_date: false },
        ],
      }}
      _compatibilityMode={false}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [{ "Custom Column 1": "left" }, { "Custom Column 2": "left" }],
      }}
      columnColors={{
        ordered: [
          { include_self_map: "" },
          { auto_advance_mapping: "" },
          { created_date: "" },
          { experimental: "" },
          { source_value_set_uuid: "" },
          { author: "" },
          { migrate: "" },
          { name: "" },
          { source_value_set_version_uuid: "" },
          { use_case_uuid: "" },
          { status: "" },
          { target_value_set_uuid: "" },
          { auto_fill_search: "" },
          { comments: "" },
          { concept_map_uuid: "" },
          { count_loaded_concepts: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { version: "" },
          { title: "" },
          { show_target_codes: "" },
          { target_value_set_version_uuid: "" },
          { uuid: "" },
          { publisher: "" },
          { description: "" },
          { purpose: "" },
          { published_date: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { "Custom Column 2": false }],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "JsonDataCell" },
          { "Custom Column 2": "button" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "Source Value Set FHIR uri" },
          { "Custom Column 2": "Data Normalization Registry Link" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "{{ fetch_source_fhir_uri.data.fhir_uri }}" },
          { "Custom Column 2": "Open Data Normalization Registry" },
        ],
      }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 1": { ordered: [] } }],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 2": {
              ordered: [
                { buttonType: "url" },
                {
                  url: "https://retool.prod.projectronin.io/apps/963763e0-44e7-11ed-8353-1bcc90713a41/Data%20Normalization%20Registry/Normalization%20Registry",
                },
                { newWindow: true },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "title", value: 268.00000762939453 } },
        { object: { id: "Custom Column 1", value: 908.9739990234375 } },
      ]}
      data="{{load_metadata.data}}"
      disableSorting={{ ordered: [{ "Custom Column 1": false }] }}
      doubleClickToEdit={true}
      dynamicRowHeights={true}
      heightType="auto"
      showBoxShadow={false}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
    />
  </Frame>
</App>
