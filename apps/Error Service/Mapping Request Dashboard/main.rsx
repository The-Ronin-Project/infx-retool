<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Text
      id="text1"
      value="##### Load Outstanding Content to Concept Maps"
      verticalAlign="center"
    />
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="f2fb9" value="Tab 1" />
          <Option id="31f10" value="Tab 2" />
          <Option id="acc2a" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="a2163" viewKey="Triage Errors">
        <TableLegacy
          id="concept_map_overview_table"
          _columns={[
            "concept_map_title",
            "concept_map_uuid",
            "latest_concept_map_version_uuid",
            "outstanding_code_count",
            "oldest_new_code_date",
          ]}
          _columnSummaryTypes={{ ordered: [{ oldest_new_code_date: "" }] }}
          _columnSummaryValues={{ ordered: [{ oldest_new_code_date: "" }] }}
          _columnVisibility={{
            ordered: [
              { concept_map_uuid: false },
              { latest_concept_map_version_uuid: false },
            ],
          }}
          _compatibilityMode={false}
          actionButtonColumnName="See Details"
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Load Outstanding Data to Concept Map" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "load_to_concept_map" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                { actionButtonDisabled: "" },
              ],
            },
            {
              ordered: [
                { actionButtonText: "Open Concept Map" },
                { actionButtonType: "openInternalUrl" },
                { actionButtonQuery: "" },
                {
                  actionButtonInternalUrlPath:
                    "cdc1d7c0-9027-11ec-b0c3-ab01646c36a6",
                },
                {
                  actionButtonInternalUrlQuery:
                    '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{ concept_map_overview_table.selectedRow.data.concept_map_uuid }}\\"}]"',
                },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: true },
                { actionButtonDisabled: "" },
              ],
            },
          ]}
          columnAlignment={{ ordered: [{ oldest_new_code_date: "left" }] }}
          columnColors={{
            ordered: [
              { "Distinct Codeable Concepts": "" },
              { "Number of Outstanding Cod": "" },
              { oldest_new_code_date: "" },
              { "Number of Concepts total": "" },
              { outstanding_code_count: "" },
              { "Distinct ": "" },
              { "Concept Map": "" },
              { "Past due": "" },
              { "Resource Type": "" },
              { "Number of Outstanding Codes": "" },
              { "Date/Time": "" },
              { number_of_outstanding_codes: "" },
              { metadata: "" },
              { "AffectedConcept Map": "" },
              { "Number of Outstanding Coddes": "" },
              { "Number of ": "" },
              { latest_concept_map_version_uuid: "" },
              { concept_map_uuid: "" },
              { "Concept Map Title": "" },
              { "Concept Ma p": "" },
              { "Number of Outst": "" },
              { concept_map_title: "" },
            ],
          }}
          columnFormats={{
            ordered: [{ oldest_new_code_date: "DateDataCell" }],
          }}
          columnHeaderNames={{
            ordered: [
              { concept_map_title: "Concept Map Title" },
              { number_of_outstanding_codes: "Outstanding Codes" },
            ],
          }}
          columnTypeProperties={{
            ordered: [
              {
                oldest_new_code_date: {
                  ordered: [{ dateFormat: "MMM d, yyyy" }],
                },
              },
            ],
          }}
          columnWidths={[
            { object: { id: "Resource Type", value: 217 } },
            { object: { id: "code", value: 123 } },
            { object: { id: "oldest_new_code_date", value: 167.25 } },
            { object: { id: "outstanding_code_count", value: 175.578125 } },
          ]}
          data="{{get_concept_map_with_outstanding_rows.data}}"
          doubleClickToEdit={true}
          showBoxShadow={false}
        />
      </View>
      <View id="cb2aa" viewKey="Recently Created">
        <TableLegacy
          id="recently_created_overview_table"
          _columnVisibility={{ ordered: [{ uuid: false }] }}
          _compatibilityMode={false}
          actionButtonColumnName=""
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Open Concept Map" },
                { actionButtonType: "openInternalUrl" },
                { actionButtonQuery: "" },
                {
                  actionButtonInternalUrlPath:
                    "184659c0-4e4f-11ed-8a53-4f14117ffdcc",
                },
                {
                  actionButtonInternalUrlQuery:
                    '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{ recently_created_overview_table.selectedRow.data.uuid }}\\"}]"',
                },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: true },
                { actionButtonDisabled: "" },
              ],
            },
          ]}
          columnColors={{
            ordered: [
              { include_self_map: "" },
              { auto_advance_mapping: "" },
              { created_date: "" },
              { experimental: "" },
              { source_value_set_uuid: "" },
              { author: "" },
              { name: "" },
              { use_case_uuid: "" },
              { status: "" },
              { target_value_set_uuid: "" },
              { auto_fill_search: "" },
              { count_loaded_concepts: "" },
              { version: "" },
              { title: "" },
              { show_target_codes: "" },
              { uuid: "" },
              { publisher: "" },
              { description: "" },
              { purpose: "" },
            ],
          }}
          columnWidths={[
            { object: { id: "created_date", value: 180 } },
            { object: { id: "version", value: 103 } },
            { object: { id: "name", value: 317 } },
            { object: { id: "title", value: 320 } },
            { object: { id: "status", value: 113 } },
          ]}
          data="{{ recent_concept_maps.data }}"
          doubleClickToEdit={true}
          showBoxShadow={false}
        />
      </View>
    </Container>
  </Frame>
</App>
