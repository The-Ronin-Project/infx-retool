<Container
  id="assignment_groups_tabbedContainer"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "rgba(185, 211, 233, 1)" }] }}
>
  <Header>
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
      value="### **{{project_metadata.data.title}}**"
      verticalAlign="center"
    />
    <Tabs
      id="tabs2"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { selectedBackground: "canvas" },
          { unselectedText: "rgb(16, 42, 67)" },
        ],
      }}
      targetContainerId="assignment_groups_tabbedContainer"
      value="{{ self.values[0] }}"
    >
      <Option id="c164c" value="Tab 1" />
      <Option id="9eff6" value="Tab 2" />
      <Option id="5ef93" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="82482"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Manual Assignments"
  >
    <Select
      id="mapper_select"
      data="{{ get_users.data }}"
      label="Mapper"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Select
      id="reviewer_select"
      data="{{ get_users.data }}"
      label="Reviewer"
      labelCaption="optional"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Button
      id="make_manual_assignment_button"
      _disclosedFields={{ array: [] }}
      disabled="{{mapper_select.value == null && reviewer_select.value == null}}"
      styleVariant="solid"
      text="Make Assignment(s)"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="manual_assign_mapper_and_reviewer"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Switch
      id="unassigned_mapper_switch"
      _disclosedFields={{ array: [] }}
      label="only view concepts with un-assigned mapper"
    />
    <TableLegacy
      id="concepts_table"
      _columns={[
        "uuid",
        "display",
        "source_code_simple",
        "source_code_jsonb",
        "source_display",
        "depends_on_value_jsonb",
        "comments",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
        "source_uuid",
        "mapper_uuid",
        "reviewer_uuid",
        "code_schema",
        "code_simple",
        "code_jsonb",
        "system_uuid",
        "previous_version_context",
        "custom_terminology_code_uuid",
        "save_for_discussion",
        "depends_on_property",
        "depends_on_system",
        "depends_on_display",
        "depends_on_value_schema",
        "depends_on_value_simple",
      ]}
      _columnSummaryTypes={{
        ordered: [{ count_of_resources_affected: "sum" }],
      }}
      _columnSummaryValues={{ ordered: [{ count_of_resources_affected: "" }] }}
      _columnVisibility={{
        ordered: [
          { previous_version_context: false },
          { save_for_discussion: false },
          { source_code_simple: "{{has_code_simple.data}}" },
          { display: false },
          { additional_data: false },
          { code_simple: false },
          { first_last_name: false },
          { count_of_resources_affected: false },
          { code_jsonb: false },
          { system_uuid: false },
          { source_code_jsonb: "{{has_code_jsonb.data}}" },
          { code: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: true },
          { code_schema: false },
          { custom_terminology_code_uuid: false },
          { comments: false },
          { last_name: false },
          { map_status: false },
          { reviewer_uuid: false },
          { assigned_reviewer: true },
          { additional_context: false },
          { mapper_uuid: false },
          { first_name: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { resource_count: false },
          { no_map: false },
          { source_uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonColumnName=""
      actionButtonPosition="right"
      allowMultiRowSelect={true}
      columnAlignment={{
        ordered: [
          { reason_for_no_map: "right" },
          { code: "right" },
          { count_of_resources_affected: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { previous_version_context: "" },
          { save_for_discussion: "" },
          { source_code_simple: "" },
          { display: "" },
          { additional_data: "" },
          { code_simple: "" },
          { depends_on_value_jsonb: "" },
          { mapping_comments: "" },
          { created_date: "" },
          { first_last_name: "" },
          { relationship_code_uuid: "" },
          { count_of_resources_affected: "" },
          { depends_on_value_simple: "" },
          { code_jsonb: "" },
          { depends_on_value: "" },
          { author: "" },
          { system_uuid: "" },
          { source_code_jsonb: "" },
          { target_concept_system_version_uuid: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { source_code: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
          { code_schema: "" },
          { custom_terminology_code_uuid: "" },
          { target_concept_system: "" },
          { comments: "" },
          { last_name: "" },
          { map_status: "" },
          { custom_terminology_uuid: "" },
          { reviewer_uuid: "" },
          { source_concept_uuid: "" },
          { reviewed_date: "" },
          { assigned_reviewer: "" },
          { additional_context: "" },
          { depends_on_value_schema: "" },
          { depends_on_system: "" },
          { review_comment: "" },
          { review_status: "" },
          { mapper_uuid: "" },
          { depends_on_display: "" },
          { first_name: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { target_concept_display: "" },
          { depends_on_property: "" },
          { source_display: "" },
          { resource_count: "" },
          { no_map: "" },
          { source_uuid: "" },
          { reviewed_by: "" },
        ],
      }}
      columnFormats={{
        ordered: [{ count_of_resources_affected: "NumberDataCell" }],
      }}
      columnHeaderNames={{
        ordered: [
          { source_code_simple: "Source Code" },
          { display: "Source Display" },
          { depends_on_value_jsonb: "Depends on Value jsonb" },
          { count_of_resources_affected: "Resource Count" },
          { depends_on_value_simple: "Depends on Value Simple" },
          { source_code_jsonb: "Source Code" },
          { code: "Source Code" },
          { source_code: "Source Code" },
          { assigned_mapper: "Mapper" },
          { assigned_reviewer: "Reviewer" },
          { depends_on_value_schema: "Depends on Value Schema" },
          { depends_on_system: "Depends on System" },
          { depends_on_display: "Depends on Display" },
          { depends_on_property: "Depends on Property" },
          { source_display: "Source Display" },
          { resource_count: "Resource Count" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          {
            count_of_resources_affected: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "resource_count", value: 116.5546875 } },
        { object: { id: "code", value: 283.5 } },
        { object: { id: "display", value: 761.8359375 } },
        { object: { id: "source_code", value: 311.96875 } },
        {
          object: {
            id: "count_of_resources_affected",
            value: 107.00868225097656,
          },
        },
        { object: { id: "assigned_reviewer", value: 113.55035400390625 } },
        { object: { id: "source_display", value: 456.953125 } },
        { object: { id: "source_code_simple", value: 207.84202575683594 } },
        { object: { id: "assigned_mapper", value: 147.55208587646484 } },
        { object: { id: "source_code_jsonb", value: 510.99481201171875 } },
      ]}
      customButtonName=""
      data="{{ get_concepts.data }}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showClearSelection={true}
      showDownloadButton={false}
      showPaginationOnTop={true}
    />
  </View>
  <View id="73c59" viewKey="Assign by Matching Displays">
    <TextInput
      id="match_query"
      _disclosedFields={{ array: [] }}
      label="Match Source Display"
      placeholder="%query%"
      showClear={true}
    />
    <Select
      id="mapper_select2"
      data="{{ get_users.data }}"
      label="Mapper"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select a mapper"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Select
      id="reviewer_select2"
      data="{{ get_users.data }}"
      label="Reviewer"
      labelCaption="optional"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select a reviewer"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Text
      id="match_text"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(72, 101, 129)" }] }}
      value="#### Matches {{query_count_total.data.match_count[0]}} concepts, {{query_count_unassigned.data.match_count[0]}}  are unassigned AND pending mapping."
      verticalAlign="center"
    />
    <Button
      id="match_source_assign_button"
      _disclosedFields={{ array: [] }}
      disabled="{{mapper_select2.value == null || match_query.value == ''}}"
      styleVariant="solid"
      text="Make Assignments"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="display_match_assign"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="match_source_display_preview_table"
      _columns={[
        "uuid",
        "code",
        "code_simple",
        "code_jsonb",
        "display",
        "comments",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
        "code_schema",
        "system_uuid",
        "previous_version_context",
        "custom_terminology_code_uuid",
        "save_for_discussion",
        "terminology_version_uuid",
        "additional_data",
        "depends_on_property",
        "depends_on_system",
        "depends_on_value",
        "depends_on_display",
        "created_date",
        "deduplication_hash",
        "migrate",
        "count_of_resources_affected",
      ]}
      _columnSummaryTypes={{
        ordered: [{ count_of_resources_affected: "sum" }],
      }}
      _columnSummaryValues={{ ordered: [{ count_of_resources_affected: "" }] }}
      _columnVisibility={{
        ordered: [
          { previous_version_context: false },
          { save_for_discussion: false },
          { deduplication_hash: false },
          { additional_data: false },
          { code_simple: "{{has_code_simple_matching.data}}" },
          { created_date: false },
          { count_of_resources_affected: false },
          { code_jsonb: "{{has_code_jsonb_matching.data}}" },
          { depends_on_value: false },
          { migrate: false },
          { system_uuid: false },
          { code_id: false },
          { code: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { code_schema: false },
          { custom_terminology_code_uuid: false },
          { comments: false },
          { map_status: false },
          { assigned_reviewer: false },
          { depends_on_system: false },
          { depends_on_display: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { depends_on_property: false },
          { resource_count: false },
          { no_map: false },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { resource_count: "right" },
          { count_of_resources_affected: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { previous_version_context: "" },
          { save_for_discussion: "" },
          { deduplication_hash: "" },
          { display: "" },
          { additional_data: "" },
          { code_simple: "" },
          { created_date: "" },
          { count_of_resources_affected: "" },
          { code_jsonb: "" },
          { system_uuid: "" },
          { code_id: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { code_schema: "" },
          { custom_terminology_code_uuid: "" },
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
      columnFormats={{
        ordered: [{ count_of_resources_affected: "NumberDataCell" }],
      }}
      columnHeaderNames={{
        ordered: [
          { display: "Source Display" },
          { code_simple: "Source Code" },
          { count_of_resources_affected: "Resource Count" },
          { code_jsonb: "Source Code" },
          { code: "Source Code" },
          { assigned_mapper: "Mapper" },
          { map_status: "Map Status" },
          { assigned_reviewer: "Reviewer" },
          { additional_context: "Additional Context" },
          { resource_count: "Resource Count" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          {
            count_of_resources_affected: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "code", value: 165.796875 } },
        { object: { id: "resource_count", value: 135.6328125 } },
        { object: { id: "additional_context", value: 296.6328125 } },
        { object: { id: "display", value: 820.3046875 } },
        { object: { id: "code_jsonb", value: 733.5173950195312 } },
        { object: { id: "code_simple", value: 165.00000762939453 } },
      ]}
      customButtonName=""
      data="{{match_source_preview.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
  </View>
  <View id="04cea" viewKey="Random Assignment">
    <NumberInput
      id="random_number_input"
      _disclosedFields={{ array: [] }}
      currency="USD"
      inputValue={0}
      label="Number of Random concepts"
      labelWrap={true}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="random_preview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <Select
      id="mapper_select3"
      data="{{ get_users.data }}"
      label="Mapper"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Select
      id="reviewer_select3"
      data="{{ get_users.data }}"
      label="Reviewer"
      labelCaption="optional"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Button
      id="random_assignment_button"
      _disclosedFields={{ array: [] }}
      disabled="{{mapper_select3.value == null || random_number_input.value == 0}}"
      styleVariant="solid"
      text="Make Assignments"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="random_assign"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="random_preview_table"
      _columns={[
        "uuid",
        "code",
        "code_simple",
        "code_jsonb",
        "display",
        "comments",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
        "code_schema",
        "system_uuid",
        "previous_version_context",
        "custom_terminology_code_uuid",
        "save_for_discussion",
        "terminology_version_uuid",
        "additional_data",
        "depends_on_property",
        "depends_on_system",
        "depends_on_value",
        "depends_on_display",
        "created_date",
        "deduplication_hash",
        "migrate",
        "count_of_resources_affected",
      ]}
      _columnSummaryTypes={{
        ordered: [{ count_of_resources_affected: "sum" }],
      }}
      _columnSummaryValues={{ ordered: [{ count_of_resources_affected: "" }] }}
      _columnVisibility={{
        ordered: [
          { previous_version_context: false },
          { save_for_discussion: false },
          { deduplication_hash: false },
          { additional_data: false },
          { code_simple: "{{has_code_simple_random.data}}" },
          { created_date: false },
          { count_of_resources_affected: false },
          { code_jsonb: "{{ has_code_jsonb_random.data}}" },
          { depends_on_value: false },
          { migrate: false },
          { system_uuid: false },
          { code: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { code_schema: false },
          { custom_terminology_code_uuid: false },
          { comments: false },
          { map_status: false },
          { assigned_reviewer: false },
          { depends_on_system: false },
          { depends_on_display: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { depends_on_property: false },
          { resource_count: false },
          { no_map: false },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { resource_count: "right" },
          { count_of_resources_affected: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { previous_version_context: "" },
          { save_for_discussion: "" },
          { deduplication_hash: "" },
          { display: "" },
          { additional_data: "" },
          { code_simple: "" },
          { created_date: "" },
          { count_of_resources_affected: "" },
          { code_jsonb: "" },
          { system_uuid: "" },
          { code_id: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { code_schema: "" },
          { custom_terminology_code_uuid: "" },
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
      columnFormats={{
        ordered: [{ count_of_resources_affected: "NumberDataCell" }],
      }}
      columnHeaderNames={{
        ordered: [
          { resource_count: "Resource Count" },
          { code: "Source Code" },
          { display: "Source Display" },
          { additional_context: "Additional Context" },
          { count_of_resources_affected: "Resource Count" },
          { code_simple: "Source Code" },
          { code_jsonb: "Source Code" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          {
            count_of_resources_affected: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "code", value: 345.75 } },
        { object: { id: "display", value: 556.75 } },
        { object: { id: "resource_count", value: 151.75 } },
        { object: { id: "additional_context", value: 317.25 } },
        { object: { id: "code_jsonb", value: 782.1475830078125 } },
      ]}
      customButtonName=""
      data="{{random_preview.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
  </View>
</Container>
