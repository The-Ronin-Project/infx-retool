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
    <Button
      id="make_manual_assignment_button"
      _disclosedFields={{ array: [] }}
      disabled="{{mapper_select.value == null && reviewer_select.value == null}}"
      styleVariant="solid"
      text="Make Assignement(s)"
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
      label="only view concpets with un-assigned mapper"
    />
    <TableLegacy
      id="concepts_table"
      _columns={[
        "uuid",
        "resource_count",
        "code",
        "display",
        "source_code",
        "source_display",
        "system",
        "comments",
        "additional_context",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
        "first_name",
        "last_name",
        "first_last_name",
        "terminology_version_uuid",
        "additional_data",
        "source_uuid",
        "mapper_uuid",
        "reviewer_uuid",
        "count_of_resources_affected",
      ]}
      _columnSummaryTypes={{
        ordered: [{ count_of_resources_affected: "sum" }],
      }}
      _columnSummaryValues={{ ordered: [{ count_of_resources_affected: "" }] }}
      _columnVisibility={{
        ordered: [
          { previous_version_context: false },
          { display: false },
          { additional_data: false },
          { first_last_name: false },
          { code: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: true },
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
          { display: "" },
          { additional_data: "" },
          { mapping_comments: "" },
          { created_date: "" },
          { first_last_name: "" },
          { relationship_code_uuid: "" },
          { count_of_resources_affected: "" },
          { depends_on_value: "" },
          { author: "" },
          { target_concept_system_version_uuid: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { source_code: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
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
          { code: "Source Code" },
          { display: "Source Display" },
          { assigned_mapper: "Mapper" },
          { assigned_reviewer: "Reviewer" },
          { resource_count: "Resource Count" },
          { count_of_resources_affected: "Resource Count" },
          { source_code: "Source Code" },
          { source_display: "Source Display" },
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
        { object: { id: "source_display", value: 506.9609375 } },
        { object: { id: "assigned_mapper", value: 227.5546875 } },
        { object: { id: "assigned_reviewer", value: 186.5546875 } },
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
        "resource_count",
        "code",
        "display",
        "system",
        "comments",
        "additional_context",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
      ]}
      _columnSummaryTypes={{
        ordered: [{ count_of_resources_affected: "sum" }],
      }}
      _columnSummaryValues={{ ordered: [{ count_of_resources_affected: "" }] }}
      _columnVisibility={{
        ordered: [
          { additional_data: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { comments: false },
          { assigned_reviewer: false },
          { uuid: false },
          { concept_map_version_uuid: false },
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
      columnFormats={{
        ordered: [{ count_of_resources_affected: "NumberDataCell" }],
      }}
      columnHeaderNames={{
        ordered: [
          { assigned_mapper: "Mapper" },
          { assigned_reviewer: "Reviewer" },
          { resource_count: "Resource Count" },
          { code: "Source Code" },
          { display: "Source Display" },
          { additional_context: "Additional Context" },
          { map_status: "Map Status" },
          { count_of_resources_affected: "Resource Count" },
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
      ]}
      customButtonName=""
      data="{{match_source_preview.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
  </View>
  <View id="04cea" viewKey="Random Assignement">
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
        "resource_count",
        "code",
        "display",
        "system",
        "comments",
        "additional_context",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
      ]}
      _columnSummaryTypes={{
        ordered: [{ count_of_resources_affected: "sum" }],
      }}
      _columnSummaryValues={{ ordered: [{ count_of_resources_affected: "" }] }}
      _columnVisibility={{
        ordered: [
          { additional_data: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { comments: false },
          { map_status: false },
          { assigned_reviewer: false },
          { uuid: false },
          { concept_map_version_uuid: false },
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
