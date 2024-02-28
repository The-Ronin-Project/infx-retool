<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(240, 244, 248)" }] }}
    type="main"
  >
    <Module
      id="conceptMapHeader1"
      name="Concept Map Header"
      pageUuid="429445c0-352c-11ed-a9cd-dfaacdcaa7fa"
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Download CSV (Entire Concept Map)"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="download_draft"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Include src="./src/filter_container.rsx" />
    <Switch
      id="show_filters"
      _disclosedFields={{ array: [] }}
      label="Show Filters"
    />
    <Select
      id="sort_direction_select"
      emptyMessage="No options"
      hideLabel={true}
      itemMode="static"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="ASC"
    >
      <Option id="c657b" label="Ascending" value="ASC" />
      <Option id="c4dc0" label="Descending" value="DESC" />
    </Select>
    <Select
      id="sorting_column_select"
      allowDeselect={true}
      emptyMessage="No options"
      itemMode="static"
      label="Sort by"
      labelAlign="right"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option
        id="d4b06"
        disabled={false}
        hidden={false}
        label="Source Code"
        value="source_code"
      />
      <Option id="c657b" label="Relationship" value="relationship" />
      <Option
        id="7d013"
        disabled={false}
        hidden={false}
        label="Target Display"
        value="target_display"
      />
      <Option
        id="bc95d"
        disabled={false}
        hidden={false}
        label="Review Status"
        value="review_status"
      />
      <Option id="c4dc0" label="Map Status" value="map_status" />
      <Option id="75803" label="Mapper" value="mapper" />
      <Option
        id="93844"
        disabled={false}
        hidden={false}
        label="Reviewer"
        value="reviewer"
      />
      <Option
        id="9b9a8"
        disabled={false}
        hidden={false}
        label="Mapping Group"
        value="mapping_group"
      />
      <Option
        id="46f39"
        disabled={false}
        hidden={false}
        label="Resource Count"
        value="resource_count"
      />
      <Option
        id="710f6"
        disabled={false}
        hidden={false}
        label="Mapping Comments"
        value="mapping_comments"
      />
      <Option
        id="e53f9"
        disabled={false}
        hidden={false}
        label="Review Comment"
        value="review_comment"
      />
      <Option
        id="c208b"
        disabled={false}
        hidden={false}
        label="No Map Reason"
        value="reason_for_no_map"
      />
    </Select>
    <TableLegacy
      id="mapped_concepts"
      _columns={[
        "code",
        "display",
        "additional_data",
        "relationship_display",
        "target_concept_code",
        "target_concept_display",
        "review_status",
        "map_status",
        "mapping_comments",
        "uuid",
        "system",
        "comments",
        "additional_context",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
        "resource_count",
        "target_concept_system",
        "created_date",
        "reviewed_date",
        "author",
        "source_concept_uuid",
        "relationship_code_uuid",
        "target_concept_system_version_uuid",
        "reviewed_by",
        "review_comment",
        "count_of_resources_affected",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { target_concept_code: "" },
          { code: "" },
          { source_code: "" },
          { display: "" },
          { count_of_resources_affected: "sum" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { target_concept_code: "" },
          { code: "" },
          { source_code: "" },
          { display: "" },
          { count_of_resources_affected: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { special_use: false },
          { display: true },
          { relationship_system_uuid: false },
          { created_date: false },
          { relationship_code_uuid: false },
          { author: true },
          { mapping_uuid: false },
          { target_concept_system_version_uuid: false },
          { code: true },
          { system: false },
          { assigned_mapper: false },
          { target_concept_system: false },
          { comments: false },
          { map_status: true },
          { source_concept_uuid: false },
          { reviewed_date: false },
          { assigned_reviewer: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { resource_count: false },
          { no_map: false },
          { reviewed_by: true },
        ],
      }}
      _compatibilityMode={false}
      actionButtonColumnName="Reject"
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Reject Mapping" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "reject_mapping" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}",
            },
          ],
        },
      ]}
      columnAlignment={{
        ordered: [
          { target_concept_code: "left" },
          { code: "left" },
          { source_code: "left" },
          { display: "left" },
          { count_of_resources_affected: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { previous_version_context: "" },
          { save_for_discussion: "" },
          { special_use: "" },
          { model_name: "" },
          { display: "" },
          { additional_data: "" },
          { model_version: "" },
          { relationship_system_uuid: "" },
          { mapping_comments: "" },
          { created_date: "" },
          { relationship_code_uuid: "" },
          { count_of_resources_affected: "" },
          { model_output_score: "" },
          { author: "" },
          { mapping_uuid: "" },
          { target_concept_system_version_uuid: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { source_code: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
          { actual_mapper: "" },
          { target_concept_system: "" },
          { comments: "" },
          { map_status: "" },
          { custom_terminology_uuid: "" },
          { source_concept_uuid: "" },
          { reviewed_date: "" },
          { assigned_reviewer: "" },
          { actual_reviewer: "" },
          { model_run_time: "" },
          { additional_context: "" },
          { review_comment: "" },
          { relationship: "" },
          { review_status: "" },
          { relationship_display: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { target_concept_display: "" },
          { source_display: "" },
          { resource_count: "" },
          { no_map: "" },
          { reviewed_by: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { target_concept_code: "TextDataCell" },
          { code: "TextMultiDataCell" },
          { source_code: "TextDataCell" },
          { display: "TextMultiDataCell" },
          { count_of_resources_affected: "NumberDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { previous_version_context: "Previous Version Context" },
          { save_for_discussion: "Save for Discussion" },
          { model_name: "Model Name" },
          { display: "Source Display" },
          { additional_data: "ℹ️" },
          { model_version: "Model Version" },
          { mapping_comments: "Mapping Comments" },
          { count_of_resources_affected: "Resource Count" },
          { model_output_score: "Model Output Score" },
          { author: "Mapper" },
          { code: "Source Code" },
          { mapping_group: "Mapping Group" },
          { reason_for_no_map: "No-Map Reason" },
          { source_code: "Source Code" },
          { target_concept_code: "Target Code" },
          { actual_mapper: "Mapper" },
          { comments: "Comments" },
          { map_status: "Map Status" },
          { custom_terminology_uuid: "Custom Terminology uuid" },
          { actual_reviewer: "Reviewer" },
          { model_run_time: "Model Run Time" },
          { additional_context: "Additional Context" },
          { review_comment: "Review Comment" },
          { relationship: "Relationship" },
          { review_status: "Review Status" },
          { relationship_display: "Relationship" },
          { target_concept_display: "Target Display" },
          { source_display: "Source Display" },
          { no_map: "No-Map" },
          { reviewed_by: "Reviewer" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { target_concept_code: { ordered: [] } },
          { code: { ordered: [] } },
          { source_code: { ordered: [] } },
          { display: { ordered: [] } },
          {
            count_of_resources_affected: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "relationship", value: 177 } },
        { object: { id: "system", value: 261 } },
        { object: { id: "target_concept_code", value: 142 } },
        { object: { id: "target_concept_display", value: 386.671875 } },
        { object: { id: "source_code", value: 202.1171875 } },
        { object: { id: "source_display", value: 912 } },
        { object: { id: "mapping_uuid", value: 316 } },
        { object: { id: "code", value: 187 } },
        { object: { id: "count_of_resources_affected", value: 95 } },
        { object: { id: "review_status", value: 115.671875 } },
        { object: { id: "additional_data", value: 139 } },
        { object: { id: "display", value: 246 } },
        { object: { id: "mapping_comments", value: 173.4201431274414 } },
        { object: { id: "previous_version_context", value: 103 } },
        { object: { id: "__retool__action_list", value: 298 } },
        { object: { id: "map_status", value: 169 } },
      ]}
      customButtonName=""
      data="{{all_concepts.data}}"
      defaultSortByColumn={null}
      doubleClickToEdit={true}
      serverPaginated={true}
      showBoxShadow={false}
      showDownloadButton={false}
      showPaginationOnTop={true}
      totalRowCount="{{count_all_concepts.data.count}}"
    />
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </Frame>
</App>
