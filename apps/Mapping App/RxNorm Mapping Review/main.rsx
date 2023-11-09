<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Select
      id="select_user"
      captionByIndex=""
      colorByIndex=""
      data="{{ getUsers.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="User"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.user_uuid }}"
    />
    <Select
      id="select_review_group"
      data="{{ getMappingGroups.data }}"
      label="Group"
      labels="{{item}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.mapping_group }}"
    >
      <Option id="d099a" value="Option 1" />
      <Option id="af5e4" value="Option 2" />
      <Option id="965da" value="Option 3" />
    </Select>
    <Button
      id="approve_rows_in_view"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Approve All Selected Rows
"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="approve_all_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="disapprove_all"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Reject All Selected Rows"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="disapprove_all_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="review_queue"
      _columns={[
        "concept_map_version_uuid",
        "display",
        "target_concept_display",
        "review_status",
        "mapping_comments",
        "uuid",
        "target_concept_code",
        "target_concept_system",
        "created_date",
        "reviewed_date",
        "author",
        "source_concept_uuid",
        "relationship_code_uuid",
        "target_concept_system_version_uuid",
        "code",
        "system",
        "comments",
        "additional_context",
        "map_status",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
      ]}
      _columnVisibility={{
        ordered: [
          { created_date: false },
          { relationship_code_uuid: false },
          { author: false },
          { mapping_uuid: false },
          { target_concept_system_version_uuid: false },
          { code: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { target_concept_code: false },
          { assigned_mapper: false },
          { target_concept_system: false },
          { comments: false },
          { map_status: false },
          { source_concept_uuid: false },
          { reviewed_date: false },
          { assigned_reviewer: false },
          { additional_context: false },
          { review_comment: false },
          { review_status: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { no_map: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Detailed View" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "open_modal" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      allowMultiRowSelect={true}
      columnColors={{
        ordered: [
          { display: "" },
          { mapping_comments: "" },
          { created_date: "" },
          { relationship_code_uuid: "" },
          { author: "" },
          { name: "" },
          { mapping_uuid: "" },
          { sales: "" },
          { target_concept_system_version_uuid: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
          { target_concept_system: "" },
          { comments: "" },
          { map_status: "" },
          { source_concept_uuid: "" },
          { reviewed_date: "" },
          { assigned_reviewer: "" },
          { additional_context: "" },
          { review_comment: "" },
          { review_status: "" },
          { id: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { email: "" },
          { target_concept_display: "" },
          { resource_count: "" },
          { no_map: "" },
          { reviewed_by: "" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { display: "source display" },
          { target_concept_display: "target concept display" },
          { mapping_comments: "mapping comments" },
        ],
      }}
      columnWidths={[
        { object: { id: "target_concept_display", value: 667 } },
        { object: { id: "mapping_comments", value: 255.5 } },
        { object: { id: "display", value: 436 } },
      ]}
      customButtonName=""
      data="{{populate_review_queue.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
    <TextArea
      id="review_comment_all"
      autoResize={true}
      label="Comment On All Selected Rows (Optional)"
      labelPosition="top"
      minLines={2}
      placeholder="Type in review comment before approving/rejecting all selected rows"
    />
    <Include src="./src/modal1.rsx" />
    <Button
      id="approve_2"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Approve All Selected Rows"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="approve_all_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="disapprove_2"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Reject All Selected Rows"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="disapprove_all_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="no_map_table"
      _columnVisibility={{
        ordered: [
          { system: false },
          { concept_map_version_uuid: false },
          { map_status: false },
          { assigned_mapper: false },
          { assigned_reviewer: false },
          { mapping_group: false },
          { uuid: false },
          { additional_context: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Map It" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "map_it_button" },
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
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { comments: "" },
          { map_status: "" },
          { assigned_reviewer: "" },
          { additional_context: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { resource_count: "" },
          { no_map: "" },
        ],
      }}
      columnWidths={[
        { object: { id: "code", value: 69.2890625 } },
        { object: { id: "uuid", value: 140.453125 } },
        { object: { id: "comments", value: 141.890625 } },
        { object: { id: "display", value: 440.140625 } },
      ]}
      customButtonName=""
      data="{{no_maps.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </Frame>
</App>
