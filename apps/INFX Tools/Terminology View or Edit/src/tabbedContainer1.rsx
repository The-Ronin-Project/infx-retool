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
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { display: "" },
          { additional_data: "" },
          { effective_end: "" },
          { level: "" },
          { system_title: "" },
          { effective_start: "" },
          { system_uuid: "" },
          { terminology_version: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { is_standard: "" },
          { status: "" },
          { definition: "" },
          { terminology: "" },
          { comments: "" },
          { fhir_uri: "" },
          { version: "" },
          { system_name: "" },
          { uuid: "" },
          { fhir_terminology: "" },
          { system_url: "" },
        ],
      }}
      columnWidths={[
        { object: { id: "terminology", value: 136 } },
        { object: { id: "terminology_version_uuid", value: 328 } },
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
    <TextInput
      id="additional_data"
      _disclosedFields={{ array: [] }}
      label="Additional Data"
      placeholder="Enter value"
    />
    <TextInput
      id="code"
      _disclosedFields={{ array: [] }}
      label="Code
"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="display"
      _disclosedFields={{ array: [] }}
      label="Display"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="depends_property_input"
      _disclosedFields={{ array: [] }}
      label="Depends on Property"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="depends_system_input"
      _disclosedFields={{ array: [] }}
      label="Depends on System"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="depends_value_input"
      _disclosedFields={{ array: [] }}
      label="Depends on Value"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="depends_display_input"
      _disclosedFields={{ array: [] }}
      label="Depends on Display"
      placeholder="Enter value"
      required={true}
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
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
