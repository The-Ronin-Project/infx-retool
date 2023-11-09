<App>
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <TextInput id="textInput1" label="Search" placeholder="Enter value" />
    <Modal
      id="view_rules_modal"
      buttonText="view"
      hidden="true"
      maintainSpaceWhenHidden={true}
      modalHeight="700px"
      modalWidth="90%"
      showInEditor={false}
    >
      <Text
        id="text1"
        value="**Viewing  Rules in  {concept_map}**"
        verticalAlign="center"
      />
      <TableLegacy
        id="rule_view_table"
        _compatibilityMode={false}
        columnColors={{
          ordered: [
            { "": "" },
            { de: "" },
            { operator: "" },
            { vale: "" },
            { name: "" },
            { sales: "" },
            { value: "" },
            { s: "" },
            { property: "" },
            { id: "" },
            { email: "" },
            { description: "" },
          ],
        }}
        customButtonName=""
        data={
          '[{\n  "description": "description",\n  "property": "property",\n  "operator": "oporator",\n  "value": "value"\n},\n{\n  "description": "description",\n  "property": "property",\n  "operator": "oporator",\n  "value": "value"\n},\n{\n  "description": "description",\n  "property": "property",\n  "operator": "oporator",\n  "value": "value"\n}]'
        }
        doubleClickToEdit={true}
        showBoxShadow={false}
      />
    </Modal>
    <Text
      id="text2"
      value="#### **This interface will mirror the view of  rule groups in a value set** ####"
      verticalAlign="center"
    />
    <TableLegacy
      id="rule_group_library"
      _columns={["title", "description", "terminology and version", "include"]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Include Rule Group" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Exclude Rule Group" },
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
      columnAlignment={{
        ordered: [{ "Custom Column 1": "center" }, { id: "center" }],
      }}
      columnColors={{
        ordered: [
          { "terminology and version": "" },
          { operator: "" },
          { include: "" },
          { name: "" },
          { sales: "" },
          { termVersion: "" },
          { value: "" },
          { terminology: "" },
          { property: "" },
          { "terminology and ": "" },
          { title: "" },
          { id: "" },
          { rule: "" },
          { email: "" },
          { description: "" },
        ],
      }}
      columnFormats={{ ordered: [{ "Custom Column 1": "ModalDataCell" }] }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "Rules" }] }}
      columnMappers={{ ordered: [{ "Custom Column 1": "view rules" }] }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 1": { ordered: [] } }],
      }}
      columnWidths={[
        { object: { id: "sales", value: 285 } },
        { object: { id: "email", value: 322.203125 } },
        { object: { id: "name", value: 298.203125 } },
        { object: { id: "termVersion", value: 92.6796875 } },
        { object: { id: "terminology", value: 96.25 } },
        { object: { id: "description", value: 502.953125 } },
        { object: { id: "title", value: 324.625 } },
        { object: { id: "include", value: 71.515625 } },
        { object: { id: "terminology and version", value: 130.453125 } },
      ]}
      customButtonName=""
      data={
        '[{\n  "title":"title",\n  "description":"description",\n  "include":"true",\n  "terminology and version": "LOINC 2.73",\n  \n}, {\n  "title":"title",\n  "description": "description",\n  "include":"true",\n  "terminology and version": "LOINC 2.73",\n  \n}]'
      }
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "open" },
            { pluginId: "view_rules_modal" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      showBoxShadow={false}
    >
      <TableLegacy
        id="table1"
        _compatibilityMode={false}
        customButtonName=""
        data={
          '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
        }
        doubleClickToEdit={true}
        showBoxShadow={false}
      />
    </TableLegacy>
  </Frame>
</App>
