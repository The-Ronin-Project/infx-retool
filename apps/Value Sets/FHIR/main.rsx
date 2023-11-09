<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="select_fhir_system"
      allowDeselect={true}
      captionByIndex="{{ item.fhir_uri }}"
      data="{{ load_fhir_terminologies.data}}"
      label="FHIR System"
      labels="{{ item.terminology }}"
      overlayMaxHeight={375}
      placeholder="Select a Code System"
      showSelectionIndicator={true}
      values="{{item.fhir_uri}}"
    />
    <Select
      id="select_fhir_version"
      allowDeselect={true}
      data="{{ load_fhir_terminology_versions.data }}"
      label="Version"
      labels="{{item.version}}"
      overlayMaxHeight={375}
      placeholder="Select a Version"
      showSelectionIndicator={true}
      value="{{ load_fhir_terminology_versions.data.version[0] }}"
      values="{{item.uuid}}"
    />
    <TextInput
      id="rule_description"
      disabled="true"
      label="Rule description"
      placeholder="Enter Description"
      value="{{select_fhir_system.value}}"
    />
    <Button id="save" styleVariant="solid" text="Save FHIR Code System">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_fhir_rule"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="fhir_table"
      _columns={[
        "uuid",
        "Custom Column 1",
        "code",
        "display",
        "definition",
        "comments",
        "terminology_version_uuid",
      ]}
      _columnSummaryTypes={{
        ordered: [{ "Custom Column 1": "" }, { "Custom Column 2": "" }],
      }}
      _columnSummaryValues={{
        ordered: [{ "Custom Column 1": "" }, { "Custom Column 2": "" }],
      }}
      _columnVisibility={{
        ordered: [
          { uuid: false },
          { code: true },
          { comments: false },
          { terminology_version_uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonColumnName="Include/Exclude"
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{
        ordered: [{ "Custom Column 1": "left" }, { "Custom Column 2": "left" }],
      }}
      columnColors={{
        ordered: [
          { uuid: "" },
          { code: "" },
          { display: "" },
          { definition: "" },
          { comments: "" },
          { terminology_version_uuid: "" },
          { "Custom Column 1": "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "ModalDataCell" },
          { "Custom Column 2": "button" },
        ],
      }}
      columnHeaderNames={{
        ordered: [{ "Custom Column 1": "More Information" }],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { "Custom Column 2": "include" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { "Custom Column 1": { ordered: [] } },
          {
            "Custom Column 2": {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: [] },
                { optionColors: [] },
                { optionValues: [] },
              ],
            },
          },
        ],
      }}
      customButtonName=""
      data="{{load_fhir_target_concepts.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    >
      <KeyValueMap
        id="selected_row_key_values"
        data="{{fhir_table.selectedRow.data}}"
        prevRowFormats={{ ordered: [] }}
        prevRowMappers={{ ordered: [] }}
        rows={[
          "a",
          "b",
          "c",
          "uuid",
          "code",
          "display",
          "definition",
          "comments",
          "terminology_version_uuid",
        ]}
        rowVisibility={{
          ordered: [
            { a: true },
            { b: true },
            { display: true },
            { c: true },
            { code: true },
            { terminology_version_uuid: true },
            { definition: true },
            { comments: true },
            { uuid: true },
          ],
        }}
      />
    </TableLegacy>
  </Frame>
</App>
