<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="7b9d4" value="Tab 1" />
      <Option id="79ddb" value="Tab 2" />
      <Option id="1451e" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="dad28" viewKey="Included">
    <Text
      id="text20"
      value="**These codes met all the inclusion criteria and made it to the final output.**"
      verticalAlign="center"
    />
    <Divider id="divider1" />
    <TextInput
      id="textInput1"
      label="Display"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="select1"
      itemMode="static"
      label="Terminology"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="c51aa" value="Option 1" />
      <Option id="67d5a" value="Option 2" />
      <Option id="cb1ef" value="Option 3" />
    </Select>
    <TextInput
      id="textInput2"
      label="Code"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TableLegacy
      id="table1"
      _columnSummaryTypes={{ ordered: [{ terminology: "" }, { code: "" }] }}
      _columnSummaryValues={{ ordered: [{ terminology: "" }, { code: "" }] }}
      _compatibilityMode={false}
      columnAlignment={{ ordered: [{ terminology: "left" }, { code: "left" }] }}
      columnColors={{
        ordered: [{ code: "" }, { display: "" }, { terminology: "" }],
      }}
      columnFormats={{
        ordered: [
          { terminology: "SingleTagDataCell" },
          { code: "TextDataCell" },
        ],
      }}
      columnMappers={{ ordered: [{ terminology: "" }] }}
      columnTypeProperties={{
        ordered: [
          {
            terminology: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: { array: [] } },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
          { code: { ordered: [] } },
        ],
      }}
      customButtonName=""
      data={
        '[\n  {\n    "code": 1234,\n    "display": "Sample code 1",\n    "terminology": "SNOMED CT 09-01-2022"\n  },\n  {\n    "code": 1234,\n    "display": "Sample code 1",\n    "terminology": "SNOMED CT 09-01-2022"\n  },\n  {\n    "code": 1234,\n    "display": "Sample code 1",\n    "terminology": "SNOMED CT 09-01-2022"\n  }\n]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
      showTableBorder={false}
      style={{
        ordered: [
          { border: "rgb(209, 209, 209)" },
          { headerBackground: "rgba(247, 247, 247, 0)" },
        ],
      }}
    />
  </View>
  <View id="23c96" viewKey="Excluded">
    <Text
      id="text21"
      value="**These codes met the initial inclusion criteria, but were then removed by the exclusion criteria.**"
      verticalAlign="center"
    />
    <Divider id="divider2" />
    <Select
      id="select2"
      itemMode="static"
      label="Terminology"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="97652" value="Option 1" />
      <Option id="8336e" value="Option 2" />
      <Option id="f67cf" value="Option 3" />
    </Select>
    <Select
      id="select3"
      itemMode="static"
      label="Excluded by Rule"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="97652" value="Option 1" />
      <Option id="8336e" value="Option 2" />
      <Option id="f67cf" value="Option 3" />
    </Select>
    <TextInput
      id="textInput3"
      label="Code"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="textInput4"
      label="Display"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TableLegacy
      id="table2"
      _columnSummaryTypes={{ ordered: [{ code: "" }, { terminology: "" }] }}
      _columnSummaryValues={{ ordered: [{ code: "" }, { terminology: "" }] }}
      _compatibilityMode={false}
      columnAlignment={{ ordered: [{ code: "left" }, { terminology: "left" }] }}
      columnColors={{
        ordered: [
          { code: "" },
          { display: "" },
          { terminology: "" },
          { excluded_by: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { code: "TextDataCell" },
          { terminology: "SingleTagDataCell" },
        ],
      }}
      columnMappers={{ ordered: [{ terminology: "" }] }}
      columnTypeProperties={{
        ordered: [
          { code: { ordered: [] } },
          {
            terminology: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: { array: [] } },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
        ],
      }}
      customButtonName=""
      data={
        '[\n  {\n    "code": 1234,\n    "display": "Sample code 1",\n    "terminology": "SNOMED CT 09-01-2022",\n    "excluded_by": "Exclude breast implant lymphoma"\n  },\n  {\n    "code": 1234,\n    "display": "Sample code 1",\n    "terminology": "SNOMED CT 09-01-2022",\n    "excluded_by": "Exclude breast implant lymphoma"\n  },\n  {\n    "code": 1234,\n    "display": "Sample code 1",\n    "terminology": "SNOMED CT 09-01-2022",\n    "excluded_by": "Exclude breast implant lymphoma"\n  }\n]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </View>
</Container>
