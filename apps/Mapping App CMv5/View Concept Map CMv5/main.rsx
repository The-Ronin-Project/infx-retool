<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(240, 244, 248)" }] }}
    type="main"
  >
    <Module
      id="conceptMapHeaderCMv1"
      name="Concept Map Header CMv5"
      pageUuid="0dc26140-c655-11ee-9076-634b44cf8362"
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
        label="Review Comments"
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
    <TableLegacy
      id="mapped_concepts"
      _columns={[
        "code_simple",
        "code_jsonb",
        "display",
        "additional_data",
        "relationship_display",
        "target_concept_code",
        "target_concept_display",
        "depends_on_value_jsonb",
        "mapping_comments",
        "reason_for_no_map",
        "mapper_name",
        "reviewer_name",
        "review_comments",
        "map_status",
        "review_status",
        "save_for_discussion",
        "mapped_date_time",
        "reviewed_date_time",
        "previous_version_context",
        "uuid",
        "comments",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "mapping_group",
        "source_concept_uuid",
        "relationship_code_uuid",
        "reviewed_by",
        "count_of_resources_affected",
        "mapping_uuid",
        "code_schema",
        "system_uuid",
        "custom_terminology_code_uuid",
        "mapping_id",
        "deduplication_hash",
        "target_concept_terminology_version_uuid",
        "mapped_by",
        "map_program_date_time",
        "map_program_version",
        "map_program_prediction_id",
        "map_program_confidence_score",
        "deleted_date_time",
        "deleted_by",
        "depends_on_property",
        "depends_on_system",
        "depends_on_display",
        "depends_on_value_schema",
        "depends_on_value_simple",
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
          { map_program_date_time: false },
          { deduplication_hash: false },
          { special_use: false },
          { display: true },
          { mapped_by: false },
          { relationship_system_uuid: false },
          { code_simple: "{{has_code_simple.data}}" },
          { created_date: false },
          { relationship_code_uuid: false },
          { count_of_resources_affected: false },
          { code_jsonb: "{{ has_code_jsonb.data }}" },
          { author: true },
          { system_uuid: false },
          { mapping_uuid: false },
          { mapping_id: false },
          { target_concept_system_version_uuid: false },
          { map_program_prediction_id: false },
          { code: true },
          { mapping_group: false },
          { system: false },
          { assigned_mapper: false },
          { code_schema: false },
          { custom_terminology_code_uuid: false },
          { target_concept_terminology_version_uuid: false },
          { target_concept_system: false },
          { comments: false },
          { map_status: true },
          { source_concept_uuid: false },
          { reviewed_date: false },
          { assigned_reviewer: false },
          { deleted_date_time: false },
          { map_program_version: false },
          { map_program_confidence_score: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { deleted_by: false },
          { resource_count: false },
          { no_map: false },
          { reviewed_by: false },
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
          { map_program_date_time: "" },
          { deduplication_hash: "" },
          { special_use: "" },
          { model_name: "" },
          { display: "" },
          { additional_data: "" },
          { model_version: "" },
          { mapped_by: "" },
          { relationship_system_uuid: "" },
          { code_simple: "" },
          { depends_on_value_jsonb: "" },
          { reviewer_name: "" },
          { mapping_comments: "" },
          { created_date: "" },
          { relationship_code_uuid: "" },
          { count_of_resources_affected: "" },
          { depends_on_value_simple: "" },
          { code_jsonb: "" },
          { mapper_name: "" },
          { model_output_score: "" },
          { author: "" },
          { system_uuid: "" },
          { mapping_uuid: "" },
          { mapping_id: "" },
          { target_concept_system_version_uuid: "" },
          { map_program_prediction_id: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { deleted_timestamp: "" },
          { source_code: "" },
          { target_concept_code: "" },
          { mapped_date_time: "" },
          { assigned_mapper: "" },
          { actual_mapper: "" },
          { code_schema: "" },
          { custom_terminology_code_uuid: "" },
          { target_concept_terminology_version_uuid: "" },
          { target_concept_system: "" },
          { comments: "" },
          { map_status: "" },
          { custom_terminology_uuid: "" },
          { reviewed_date_time: "" },
          { source_concept_uuid: "" },
          { reviewed_date: "" },
          { assigned_reviewer: "" },
          { actual_reviewer: "" },
          { model_run_time: "" },
          { additional_context: "" },
          { depends_on_value_schema: "" },
          { depends_on_system: "" },
          { deleted_date_time: "" },
          { review_comment: "" },
          { relationship: "" },
          { review_status: "" },
          { map_program_version: "" },
          { depends_on_display: "" },
          { relationship_display: "" },
          { map_program_confidence_score: "" },
          { review_comments: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { deleted_by: "" },
          { target_concept_display: "" },
          { depends_on_property: "" },
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
          { save_for_discussion: "Saved for Discussion" },
          { model_name: "Model Name" },
          { display: "Source Display" },
          { additional_data: "ℹ️" },
          { model_version: "Model Version" },
          { mapped_by: "mapped_by" },
          { code_simple: "Source Code" },
          { depends_on_value_jsonb: "Depends on Value jsonb" },
          { reviewer_name: "Reviewer" },
          { mapping_comments: "Mapping Comments" },
          { count_of_resources_affected: "Resource Count" },
          { depends_on_value_simple: "Depends on Value Simple" },
          { code_jsonb: "Source Code" },
          { mapper_name: "Mapper" },
          { model_output_score: "Model Output Score" },
          { author: "Mapper" },
          { code: "Source Code" },
          { mapping_group: "Mapping Group" },
          { reason_for_no_map: "No Map Reason" },
          { source_code: "Source Code" },
          { target_concept_code: "Target Code" },
          { mapped_date_time: "Mapped Date" },
          { actual_mapper: "Mapper" },
          { comments: "Comments" },
          { map_status: "Map Status" },
          { custom_terminology_uuid: "Custom Terminology uuid" },
          { reviewed_date_time: "Reviewed Date" },
          { actual_reviewer: "Reviewer" },
          { model_run_time: "Model Run Time" },
          { additional_context: "Additional Context" },
          { depends_on_value_schema: "Depends on Value Schema" },
          { depends_on_system: "Depends on System" },
          { review_comment: "Review Comment" },
          { relationship: "Relationship" },
          { review_status: "Review Status" },
          { depends_on_display: "Depends on Display" },
          { relationship_display: "Relationship" },
          { review_comments: "Review Comments" },
          { target_concept_display: "Target Display" },
          { depends_on_property: "Depends on Property" },
          { source_display: "Source Display" },
          { no_map: "No-Map" },
          { reviewed_by: "reviewed_by" },
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
        { object: { id: "mapping_comments", value: 173.4201431274414 } },
        { object: { id: "previous_version_context", value: 103 } },
        { object: { id: "display", value: 296.99827575683594 } },
        { object: { id: "additional_data", value: 43.99305725097656 } },
        { object: { id: "code_jsonb", value: 253.9947967529297 } },
        { object: { id: "__retool__action_list", value: 167.99481201171875 } },
        { object: { id: "depends_on_value_schema", value: 94.00000762939453 } },
        { object: { id: "depends_on_value_simple", value: 79.99826431274414 } },
        { object: { id: "review_comments", value: 166.00000762939453 } },
        { object: { id: "map_status", value: 101.99305725097656 } },
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
