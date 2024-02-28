<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  heightType="fixed"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgb(240, 244, 248)" }] }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="d5982" value="Tab 1" />
      <Option id="39ad2" value="Tab 2" />
      <Option id="992b5" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="225d3" viewKey="View Terminology">
    <TableLegacy
      id="terminology_table"
      _columns={[
        "code_id",
        "code_schema",
        "code_simple",
        "code_jsonb",
        "display",
        "additional_data",
        "uuid",
        "terminology",
        "version",
        "fhir_uri",
        "terminology_version_uuid",
        "deduplication_hash",
        "sequence",
        "depends_on_property",
        "depends_on_system",
        "depends_on_display",
        "depends_on_value_schema",
        "depends_on_value_simple",
        "depends_on_value_jsonb",
        "created_date",
        "effective_start",
        "effective_end",
        "is_standard",
        "fhir_terminology",
        "code_uuid",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { is_standard: "checkedCount" },
          { fhir_terminology: "checkedCount" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [{ is_standard: "" }, { fhir_terminology: "" }],
      }}
      _columnVisibility={{
        ordered: [
          { deduplication_hash: false },
          { sequence: false },
          { code_simple: "{{has_code_simple.data}}" },
          { code_jsonb: "{{has_code_jsonb.data}}" },
          { code_uuid: true },
          { terminology_version_uuid: false },
          { is_standard: true },
          { terminology: false },
          { fhir_uri: false },
          { version: false },
          { uuid: false },
          { fhir_terminology: true },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [{ is_standard: "center" }, { fhir_terminology: "center" }],
      }}
      columnColors={{
        ordered: [
          { deduplication_hash: "" },
          { sequence: "" },
          { display: "" },
          { additional_data: "" },
          { effective_end: "" },
          { code_simple: "" },
          { depends_on_value_jsonb: "" },
          { level: "" },
          { created_date: "" },
          { system_title: "" },
          { depends_on_value_simple: "" },
          { code_jsonb: "" },
          { depends_on_value: "" },
          { effective_start: "" },
          { migrate: "" },
          { system_uuid: "" },
          { terminology_version: "" },
          { code_id: "" },
          { code: "" },
          { code_uuid: "" },
          { terminology_version_uuid: "" },
          { is_standard: "" },
          { status: "" },
          { code_schema: "" },
          { definition: "" },
          { terminology: "" },
          { old_uuid: "" },
          { comments: "" },
          { action: "" },
          { depends_on_value_schema: "" },
          { depends_on_system: "" },
          { fhir_uri: "" },
          { version: "" },
          { depends_on_display: "" },
          { system_name: "" },
          { uuid: "" },
          { depends_on_property: "" },
          { fhir_terminology: "" },
          { system_url: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { is_standard: "CheckboxDataCell" },
          { fhir_terminology: "CheckboxDataCell" },
        ],
      }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "Code" }] }}
      columnMappers={{
        ordered: [
          {
            "Custom Column 1":
              "{{currentRow.code_simple || currentRow.code_jsonb}}",
          },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { is_standard: { ordered: [{ falseDisplayValue: "empty" }] } },
          { fhir_terminology: { ordered: [{ falseDisplayValue: "empty" }] } },
        ],
      }}
      columnWidths={[
        { object: { id: "terminology", value: 136 } },
        { object: { id: "terminology_version_uuid", value: 328 } },
        { object: { id: "Custom Column 1", value: 202 } },
        { object: { id: "display", value: 227 } },
      ]}
      customButtonName=""
      data="{{view_terminology.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
      value="#### Add New Code Below ####"
      verticalAlign="center"
    />
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <Select
      id="select_code_schema"
      emptyMessage="No options"
      itemMode="static"
      label="Code Schema"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="2e2a7" label="code" value="code" />
      <Option
        id="13efa"
        label="CodeableConcept"
        value="http://projectronin.io/fhir/StructureDefinition/ronin-conceptMapSourceCodeableConcept"
      />
    </Select>
    <Text
      id="text3"
      value="**Additional Data JSON Editor**"
      verticalAlign="center"
    />
    <JSONEditor
      id="additional_data"
      value={
        '{\n  "a": {\n    "b": [1,2,3,4,5,6,7,8,9],\n    "c": {\n      "d": false\n    },\n    "e": "hi"\n  }\n}'
      }
    />
    <TextInput
      id="code"
      _disclosedFields={{ array: [] }}
      hidden="{{select_code_schema.value!='code'}}"
      label="Code
"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="display"
      _disclosedFields={{ array: [] }}
      hidden="{{select_code_schema.value!='code'}}"
      label="Display"
      placeholder="Enter value"
      required={true}
    />
    <Text
      id="text4"
      hidden="{{select_code_schema.value!='http://projectronin.io/fhir/StructureDefinition/ronin-conceptMapSourceCodeableConcept'}}"
      value="**Codeable Concept JSON Editor**"
      verticalAlign="center"
    />
    <JSONEditor
      id="codeable_concept_editor"
      hidden="{{select_code_schema.value!='http://projectronin.io/fhir/StructureDefinition/ronin-conceptMapSourceCodeableConcept'}}"
      value={
        '{\n  text: "Add Text",\n  coding: [\n    {\n      "code": "Example Code",\n      "display": "Example Display",\n      "system": "[FHIR URI here]",\n      "version": "[version of the terminology here]"\n    }\n  ]\n}'
      }
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      hidden="{{select_code_schema.value!='code'}}"
      styleVariant="solid"
      text="Add Code
"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insert_new_code"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button3"
      _disclosedFields={{ array: [] }}
      hidden="{{select_code_schema.value!='http://projectronin.io/fhir/StructureDefinition/ronin-conceptMapSourceCodeableConcept'}}"
      styleVariant="solid"
      text="Add Codeable Concept
"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insert_new_codeable_concept"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="1fcf6"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Bulk Add Codes
"
  >
    <FileButton
      id="fileButton1"
      _disclosedFields={{ array: [] }}
      iconBefore="bold/programming-browser-search"
      parseFiles={true}
      styleVariant="outline"
      text="Browse"
    />
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      value="****Choose a file from your local computer to get started:****"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Upload Row" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnColors={{
        ordered: [
          { display: "" },
          { additional_data: "" },
          { created_at: "" },
          { quantity: "" },
          { image_url: "" },
          { name: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { updated_at: "" },
          { unit_price_cents: "" },
          { id: "" },
        ],
      }}
      customButtonName=""
      data="{{fileButton1.parsedValue[0]}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <JSONEditor
      id="jsonEditor1"
      hidden="true
"
      value="{{table1.data}}"
    />
    <Button
      id="button2"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Upload File"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="bulk_insert_code"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
