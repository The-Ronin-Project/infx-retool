<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="select_user"
      captionByIndex=""
      colorByIndex=""
      data="{{ user_query.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Mapper"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{current_user_match.data.uuid[0]}}"
      values="{{ item.user_uuid }}"
    />
    <Text id="text2" value="**Currently Mapping**" verticalAlign="center" />
    <Text
      id="text3"
      value="### {{suggestion_table.data.source_display[0]}}"
      verticalAlign="center"
    />
    <Button
      id="reject_suggestions"
      styleVariant="solid"
      text="Reject Suggestions and Send to Manual Mapping"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="reject_all_suggest"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text4"
      value="**Suggestions for Consideration**"
      verticalAlign="center"
    />
    <TableLegacy
      id="suggestions_table"
      _columns={[
        "source_display",
        "code",
        "suggestion_display",
        "source_concept_uuid",
        "suggestion_uuid",
        "additional_info",
        "Custom Column 5",
        "Custom Column 4",
        "Custom Column 3",
        "Custom Column 2",
        "Custom Column 1",
      ]}
      _columnSummaryTypes={{ ordered: [{ code: "" }] }}
      _columnSummaryValues={{ ordered: [{ code: "" }] }}
      _columnVisibility={{
        ordered: [
          { additional_info: false },
          { confidence: false },
          { name: false },
          { terminology_version: false },
          { code: true },
          { system: false },
          { assigned_mapper: false },
          { source_concept_uuid: false },
          { suggestion_uuid: false },
          { timestamp: false },
          { assigned_reviewer: false },
          { suggestion_source: false },
          { additional_context: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { source_display: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Accept" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "save_mapping" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      calculatedColumns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
        "Custom Column 4",
        "Custom Column 5",
      ]}
      columnAlignment={{
        ordered: [{ "Custom Column 1": "left" }, { code: "left" }],
      }}
      columnColors={{
        ordered: [
          { display: "" },
          { additional_info: "" },
          { suggestion_display: "" },
          { accepted: "" },
          { confidence: "" },
          { name: "" },
          { sales: "" },
          { terminology_version: "" },
          { code: "" },
          { system: "" },
          { assigned_mapper: "" },
          { comments: "" },
          { map_status: "" },
          { source_concept_uuid: "" },
          { suggestion_uuid: "" },
          { timestamp: "" },
          { assigned_reviewer: "" },
          { "Custom Column 1": "" },
          { suggestion_source: "" },
          { additional_context: "" },
          { "Custom Column 2": "" },
          { "Custom Column 3": "" },
          { "Custom Column 4": "" },
          { "Custom Column 5": "" },
          { id: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { email: "" },
          { source_display: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { suggestion_display: false },
          { uuid: false },
          { code: false },
          { source_display: false },
          { "Custom Column 1": false },
          { "Custom Column 2": false },
          { "Custom Column 3": false },
          { "Custom Column 4": false },
          { "Custom Column 5": false },
        ],
      }}
      columnFormats={{
        ordered: [{ "Custom Column 1": "default" }, { code: "TextDataCell" }],
      }}
      columnHeaderNames={{
        ordered: [
          { name: "relationship" },
          { sales: "rxnorm code" },
          { code: "RxCUI" },
          { "Custom Column 1": "Term Type" },
          { "Custom Column 2": "Dose Form" },
          { "Custom Column 3": "Route" },
          { "Custom Column 4": "Strength" },
          { "Custom Column 5": "Ingredient" },
          { id: "source concept " },
          { email: "rxnorm display" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "{{currentRow.additional_info.termType}}" },
          {
            "Custom Column 2": "{{currentRow.additional_info.rxnormDoseForm}}",
          },
          { "Custom Column 3": "{{currentRow.additional_info.route}}" },
          { "Custom Column 4": "{{currentRow.additional_info.strength}}" },
          { "Custom Column 5": "{{currentRow.additional_info.ingredient}}" },
        ],
      }}
      columnTypeProperties={{ ordered: [{ code: { ordered: [] } }] }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [{ buttonType: "action" }, { action: "accept_suggest" }],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "email", value: 360.734375 } },
        { object: { id: "name", value: 144.3984375 } },
        { object: { id: "id", value: 237.3984375 } },
        { object: { id: "source_concept_uuid", value: 227.5 } },
        { object: { id: "display", value: 392.109375 } },
        { object: { id: "code", value: 130.7265625 } },
        { object: { id: "source_display", value: 682.4453125 } },
        { object: { id: "Custom Column 2", value: 158.0625 } },
        { object: { id: "Custom Column 1", value: 98.109375 } },
        { object: { id: "suggestion_display", value: 590.90625 } },
      ]}
      customButtonName=""
      data="{{suggestion_table.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <Text
      id="total_number"
      value="**{{total_number_left.data.count_left}}** total source concepts left to review "
      verticalAlign="center"
    />
    <Text
      id="user_number"
      value="**{{user_number_left.data.count_left}}** source concepts left to review for {{select_user.selectedLabel}}"
      verticalAlign="center"
    />
  </Frame>
</App>
