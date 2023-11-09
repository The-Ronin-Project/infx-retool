<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Container
      id="container1"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.26)" }] }}
          value="Rule Group Actions"
          verticalAlign="center"
        />
      </Header>
      <View id="c2c10" viewKey="View 1">
        <LinkList
          id="linkList1"
          itemMode="static"
          label=""
          labelPosition="top"
          showUnderline="never"
        >
          <Option
            id="c7180"
            icon="bold/interface-content-book-2"
            label="Add Rule Group from Library"
          />
          <Option
            id="8e0cf"
            icon="bold/interface-add-1"
            label="Create New Rule Group"
          />
        </LinkList>
      </View>
    </Container>
    <Text
      id="text2"
      value="**Rule Groups Currently in Value Set**"
      verticalAlign="center"
    />
    <TableLegacy
      id="current_rule_groups"
      _columns={[
        "uuid",
        "rule_group",
        "position",
        "description",
        "property",
        "operator",
        "value",
        "include",
        "value_set_version",
        "terminology_version",
        "terminology",
        "version",
      ]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnVisibility={{
        ordered: [
          { operator: false },
          { include: false },
          { position: false },
          { terminology_version: false },
          { value_set_version: false },
          { value: false },
          { property: false },
          { uuid: false },
          { rule_group: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "🗑 Remove Rule Group" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "🖋 View/Edit " },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "e8d323e0-701c-11ed-85b0-9fec2b2c2bf8",
            },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
      columnColors={{
        ordered: [
          { operator: "" },
          { "terminoloy and version": "" },
          { Include: "" },
          { include: "" },
          { position: "" },
          { terminology_version: "" },
          { value_set_version: "" },
          { value: "" },
          { "terminoloy and ": "" },
          { terminology: "" },
          { property: "" },
          { version: "" },
          { title: "" },
          { terminoloy: "" },
          { uuid: "" },
          { rule_group: "" },
          { description: "" },
        ],
      }}
      columnFormats={{ ordered: [{ "Custom Column 1": "ModalDataCell" }] }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "Info" }] }}
      columnMappers={{ ordered: [{ "Custom Column 1": "More info" }] }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 1": { ordered: [] } }],
      }}
      columnWidths={[
        { object: { id: "Include", value: 282.1328125 } },
        { object: { id: "title", value: 424.1328125 } },
        { object: { id: "description", value: 391.8046875 } },
        { object: { id: "terminoloy and version", value: 235.796875 } },
        { object: { id: "__retool__action_list", value: 359.1328125 } },
      ]}
      customButtonName=""
      data={
        '[{title:"title", description:" description", "terminoloy and version": "LOINC 2.73", "Include":"True"},\n{title:"title", description:" description", "terminoloy and version": "ICD-10-CM", "Include":"True"}]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </Frame>
</App>
