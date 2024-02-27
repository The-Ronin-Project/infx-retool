<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" paddingType="normal" sticky={false} type="main">
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="#### Recently mapped concepts for: {{cm_version_metadata.data.title}}, version {{cm_version_metadata.data.version}}"
      verticalAlign="center"
    />
    <Select
      id="user_select"
      captionByIndex=""
      colorByIndex=""
      data="{{ get_authors.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Filter by User"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{current_user_match.data.first_last_name[0]}}"
      values="{{ item.first_last_name }}"
    >
      <Option id="cbd4f" value="Option 1" />
      <Option id="0b7ab" value="Option 2" />
      <Option id="23ac4" value="Option 3" />
    </Select>
    <Text
      id="info"
      _disclosedFields={{ array: [] }}
      value="Mappings with the target codes highlighted in red have been deleted."
      verticalAlign="center"
    />
    <TableLegacy
      id="history_table"
      _columnSummaryTypes={{
        ordered: [{ target_code: "" }, { source_code: "" }],
      }}
      _columnSummaryValues={{
        ordered: [{ target_code: "" }, { source_code: "" }],
      }}
      _columnVisibility={{
        ordered: [
          { source_code: true },
          { mapping_uuid: false },
          { uuid: false },
          { sc_uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete Mapping" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "change_map_status_pre_delete" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{cm_version_metadata.data.status == 'active' || cm_version_metadata.data.status == 'retired' || !mapping_uuids.data.mapping_uuid.includes(currentRow.mapping_uuid)}}",
            },
          ],
        },
      ]}
      columnAlignment={{
        ordered: [{ target_code: "left" }, { source_code: "left" }],
      }}
      columnColors={{
        ordered: [
          { source_code_simple: "" },
          { sc_uuid: "" },
          { author: "" },
          { mapping_uuid: "" },
          { source_code_jsonb: "" },
          { source_code: "" },
          { target_display: "" },
          { timestamp: "" },
          { relationship: "" },
          { uuid: "" },
          {
            target_code:
              "{{mapping_uuids.data.mapping_uuid.includes(currentRow.mapping_uuid) ? 'white': '#FF7F7F'}}",
          },
          { source_display: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { target_code: "TextDataCell" },
          { source_code: "TextDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { source_code_simple: "Source Code Simple" },
          { author: "Mapper" },
          { source_code_jsonb: "Source Code jsonb" },
          { source_code: "Source Code" },
          { target_display: "Target Display" },
          { timestamp: "Date Time" },
          { relationship: "Relationship" },
          { target_code: "Target Code" },
          { source_display: "Source Display" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { target_code: { ordered: [] } },
          { source_code: { ordered: [] } },
        ],
      }}
      columnWidths={[
        { object: { id: "target_display", value: 617.3359375 } },
        { object: { id: "timestamp", value: 162 } },
        { object: { id: "target_code", value: 193.328125 } },
        { object: { id: "source_code", value: 193 } },
        { object: { id: "relationship", value: 198 } },
        { object: { id: "source_code_jsonb", value: 268.00000762939453 } },
        { object: { id: "source_code_simple", value: 234.00000762939453 } },
        { object: { id: "source_display", value: 307.998291015625 } },
      ]}
      customButtonName=""
      data="{{ load_recent_history.data }}"
      disableSorting={{
        ordered: [
          { target_display: true },
          { author: true },
          { target_code: true },
          { source_display: true },
        ],
      }}
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </Frame>
</App>
