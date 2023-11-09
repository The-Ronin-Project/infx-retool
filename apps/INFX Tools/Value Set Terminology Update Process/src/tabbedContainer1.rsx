<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { headerBackground: "rgb(185, 211, 233)" },
      { background: "rgb(240, 244, 248)" },
    ],
  }}
  styleContext={{ ordered: [{ surfacePrimary: "rgb(255, 255, 255)" }] }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { unselectedText: "rgb(51, 78, 104)" },
          { selectedBackground: "canvas" },
        ],
      }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="e304d" value="Tab 1" />
      <Option id="c245d" value="Tab 2" />
      <Option id="2d085" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="45984" viewKey="Action Required">
    <TableLegacy
      id="latest_version_not_active_table"
      _columnVisibility={{ ordered: [{ name: false }, { title: true }] }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Go to Versions" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "4f31f1c8-2228-11ec-90d7-a387d41c775c",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{latest_version_not_active_table.selectedRow.data.value_set_uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnColors={{
        ordered: [{ name: "" }, { title: "" }, { value_set_uuid: "" }],
      }}
      columnHeaderNames={{
        ordered: [
          { name: "ValueSet Name" },
          { title: "Value Set Title" },
          { value_set_uuid: "Value Set UUID" },
        ],
      }}
      columnWidths={[
        { object: { id: "ready_for_update", value: 530.5 } },
        { object: { id: "title", value: 492 } },
        { object: { id: "value_set_uuid", value: 427.5 } },
      ]}
      data="{{get_reports.data.latest_version_not_active}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
      style={{
        ordered: [
          { toolbarBackground: "rgb(217, 226, 236)" },
          { headerBackground: "rgb(240, 244, 248)" },
        ],
      }}
    />
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </View>
  <View id="1a057" label="Ready for Update" viewKey="View 2">
    <TableLegacy
      id="valuesets_ready_for_update_table"
      _columnVisibility={{ ordered: [{ name: false }] }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Perform Update on selected row" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "update_selected_row" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnHeaderNames={{
        ordered: [
          { title: "Value Set Title" },
          { value_set_uuid: "Value Set UUID" },
        ],
      }}
      data="{{get_reports.data.ready_for_update}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
      style={{
        ordered: [
          { toolbarBackground: "rgb(217, 226, 236)" },
          { headerBackground: "rgb(240, 244, 248)" },
        ],
      }}
    />
  </View>
  <View id="873b1" label="Already Updated" viewKey="View 3">
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{
        ordered: [
          { headerBackground: "rgb(185, 211, 233)" },
          { background: "rgb(240, 244, 248)" },
        ],
      }}
      styleContext={{ ordered: [{ surfacePrimary: "rgb(255, 255, 255)" }] }}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          style={{
            ordered: [
              { unselectedText: "rgb(51, 78, 104)" },
              { selectedBackground: "canvas" },
            ],
          }}
          targetContainerId="tabbedContainer2"
          value="{{ self.values[0] }}"
        >
          <Option id="16d9f" value="Tab 1" />
          <Option id="3d87e" value="Tab 2" />
          <Option id="e059b" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="c1ea1" viewKey="Status 'pending'">
        <TableLegacy
          id="already_updated_table"
          _columnVisibility={{
            ordered: [
              { title: true },
              { name: false },
              { most_recent_version_status: false },
            ],
          }}
          _compatibilityMode={false}
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Go to Versions" },
                { actionButtonType: "openInternalUrl" },
                { actionButtonQuery: "" },
                {
                  actionButtonInternalUrlPath:
                    "4f31f1c8-2228-11ec-90d7-a387d41c775c",
                },
                {
                  actionButtonInternalUrlQuery:
                    '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{already_updated_table.selectedRow.data.value_set_uuid}}\\"}]"',
                },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: true },
                { actionButtonDisabled: "" },
              ],
            },
          ]}
          columnColors={{
            ordered: [
              { most_recent_version_status: "" },
              { name: "" },
              { title: "" },
              { value_set_uuid: "" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { title: "Value Set Title" },
              { value_set_uuid: "Value Set UUID" },
            ],
          }}
          data={
            '{{ get_reports.data.already_updated.filter(row => row.most_recent_version_status === "pending") }}'
          }
          doubleClickToEdit={true}
          overflowType="scroll"
          showBoxShadow={false}
          showPaginationOnTop={true}
          style={{
            ordered: [
              { toolbarBackground: "rgb(217, 226, 236)" },
              { headerBackground: "rgb(240, 244, 248)" },
            ],
          }}
        />
      </View>
      <View id="6fc3d" viewKey="Status 'reviewed'">
        <TableLegacy
          id="table1"
          _columnVisibility={{
            ordered: [{ title: false }, { most_recent_version_status: false }],
          }}
          _compatibilityMode={false}
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Go to Versions" },
                { actionButtonType: "openInternalUrl" },
                { actionButtonQuery: "" },
                { actionButtonInternalUrlPath: "" },
                {
                  actionButtonInternalUrlQuery:
                    '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{latest_version_not_active_table.selectedRow.data.value_set_uuid}}\\"}]"',
                },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: true },
                { actionButtonDisabled: "" },
              ],
            },
          ]}
          columnColors={{
            ordered: [
              { most_recent_version_status: "" },
              { name: "" },
              { title: "" },
              { value_set_uuid: "" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { name: "Value Set Name" },
              { value_set_uuid: "Value Set UUID" },
            ],
          }}
          data={
            '{{ get_reports.data.already_updated.filter(row => row.most_recent_version_status === "reviewed") }}\n'
          }
          doubleClickToEdit={true}
          overflowType="scroll"
          showBoxShadow={false}
          showPaginationOnTop={true}
          style={{
            ordered: [
              { headerBackground: "rgb(240, 244, 248)" },
              { toolbarBackground: "rgb(217, 226, 236)" },
            ],
          }}
        />
      </View>
    </Container>
  </View>
</Container>
