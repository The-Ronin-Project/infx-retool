<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="value_set_assignment_tabs"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="6ffe3" value="Tab 1" />
      <Option id="8919f" value="Tab 2" />
      <Option id="73ad2" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="6343b" viewKey="Value Set Assignment Que">
    <Select
      id="assignee_select"
      data="{{ user_query.data }}"
      label="Assignee Select"
      labels="{{item.first_last_name}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{current_user_match.data.uuid[0]}}"
      values="{{item.user_uuid}}"
    />
    <Checkbox id="primary_checkbox" label="Primary Assignment" value="true" />
    <Checkbox id="backup_checkbox" label="Backup Assignment" value="true" />
    <Checkbox id="review_checkbox" label="Review Assignment" value="true" />
    <TableLegacy
      id="assignment_table_1"
      _columns={[
        "assigned_to_name",
        "reviewer_name",
        "assignment_back_up_name",
        "title",
        "value_set_version_uuid",
        "assigned_to",
        "assignment_back_up",
        "due_date",
        "reviewer",
        "uuid",
        "effective_start",
        "effective_end",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "version",
        "comments",
      ]}
      _columnVisibility={{
        ordered: [
          { assignment_back_up: false },
          { effective_end: false },
          { reviewer: false },
          { created_date: false },
          { value_set_uuid: false },
          { effective_start: false },
          { assigned_to: false },
          { value_set_version_uuid: false },
          { comments: false },
          { uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonColumnName="Create Rules or Review"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Create Rules or Review" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "e05e5e00-22d4-11ec-ac10-033a63082f03",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{assignment_table_1.selectedRow.data.value_set_version_uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnColors={{
        ordered: [
          { assignment_back_up: "" },
          { effective_end: "" },
          { reviewer_name: "" },
          { reviewer: "" },
          { created_date: "" },
          { value_set_uuid: "" },
          { assignment_back_up_name: "" },
          { effective_start: "" },
          { assigned_to: "" },
          { value_set_version_uuid: "" },
          { status: "" },
          { comments: "" },
          { version: "" },
          { title: "" },
          { due_date: "" },
          { uuid: "" },
          { description: "" },
          { assigned_to_name: "" },
        ],
      }}
      columnWidths={[
        { object: { id: "__retool__action_list", value: 197.5546875 } },
      ]}
      customButtonName=""
      data="{{ assignment_table.data }}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "load_vs_metadata" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      showBoxShadow={false}
    />
  </View>
  <View id="7578c" viewKey="Create and Update Assignments">
    <Button id="create_value_set" styleVariant="solid" text="Create Value Set">
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "2e4206c4-2228-11ec-99aa-e782eefccea2" },
            {
              options: {
                ordered: [
                  { newTab: true },
                  { queryParams: [{ ordered: [{ key: "" }, { value: "" }] }] },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Checkbox
      id="create_new_assignment_checkbox"
      label="Create New Assignment"
    />
    <Checkbox
      id="update_current_assignment_checkbox"
      label="Update Current Assignment"
    />
    <Select
      id="primary_assignee"
      data="{{assignee_search.data}}"
      label="Primary Assignee"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid}}"
    />
    <Text
      id="Current_assignment_count"
      value="Current Assignment Count: {{assignment_primary_count.data.count[0]}}"
      verticalAlign="center"
    />
    <Select
      id="backup_asignee"
      data="{{assignee_search.data}}"
      label="Backup Assignee"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.uuid}}"
    />
    <Text
      id="current_backup_count"
      value="Current Backup Count: {{assignment_backup_count.data.count[0]}}"
      verticalAlign="center"
    />
    <Select
      id="reviewer"
      data="{{assignee_search.data}}"
      label="Reviewer"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.uuid}}"
    />
    <Text
      id="current_backup_count2"
      value="Current Review Count: {{reviewer_table_count.data.count[0]}}"
      verticalAlign="center"
    />
    <Date
      id="due_date"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Due Date"
      value="{{ new Date() }}"
    />
    <TableLegacy
      id="assignment_que"
      _columnVisibility={{
        ordered: [
          { contact: false },
          { assignment_back_up: false },
          { immutable: false },
          { effective_end: false },
          { reviewer: false },
          { created_date: false },
          { first_last_name: false },
          { value_set_uuid: false },
          { experimental: false },
          { effective_start: false },
          { name: false },
          { assigned_to: false },
          { value_set_version_uuid: false },
          { use_case_uuid: false },
          { comments: false },
          { last_name: false },
          { first_name: false },
          { type: false },
          { uuid: false },
          { publisher: false },
          { description: false },
          { purpose: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Assign or Update" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "assign_update" },
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
          { contact: "" },
          { assignment_back_up: "" },
          { immutable: "" },
          { effective_end: "" },
          { reviewer_name: "" },
          { reviewer: "" },
          { created_date: "" },
          { first_last_name: "" },
          { value_set_uuid: "" },
          { experimental: "" },
          { assignment_back_up_name: "" },
          { effective_start: "" },
          { name: "" },
          { sales: "" },
          { assigned_to: "" },
          { value_set_version_uuid: "" },
          { use_case_uuid: "" },
          { status: "" },
          { comments: "" },
          { last_name: "" },
          { version: "" },
          { title: "" },
          { due_date: "" },
          { first_name: "" },
          { type: "" },
          { id: "" },
          { uuid: "" },
          { publisher: "" },
          { email: "" },
          { description: "" },
          { assigned_to_name: "" },
          { purpose: "" },
        ],
      }}
      columnWidths={[{ object: { id: "__retool__action_list", value: 146 } }]}
      customButtonName=""
      data="{{load_vs_metadata.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </View>
  <View
    id="0315c"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Concept Map Assignments"
  >
    <TableLegacy
      id="concept_maps_table"
      _columns={[
        "uuid",
        "name",
        "title",
        "publisher",
        "author",
        "purpose",
        "description",
        "created_date",
        "experimental",
        "Custom Column 1",
        "Custom Column 2",
        "concept_map_uuid",
        "comments",
        "status",
        "effective_start",
        "effective_end",
        "version",
        "code",
        "display",
        "system",
        "additional_context",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
        "Custom Column 3",
      ]}
      _columnVisibility={{
        ordered: [
          { display: false },
          { effective_end: false },
          { created_date: false },
          { experimental: false },
          { effective_start: false },
          { author: false },
          { name: false },
          { code: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { status: false },
          { comments: false },
          { map_status: false },
          { concept_map_uuid: false },
          { assigned_reviewer: false },
          { additional_context: false },
          { version: false },
          { title: true },
          { uuid: false },
          { concept_map_version_uuid: false },
          { publisher: false },
          { description: false },
          { no_map: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Map Concepts" },
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
            { actionButtonText: "Review Mappings" },
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
            { actionButtonText: "Adjudicate Suggestions" },
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
      calculatedColumns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
      ]}
      columnColors={{
        ordered: [
          { display: "" },
          { effective_end: "" },
          { created_date: "" },
          { experimental: "" },
          { effective_start: "" },
          { author: "" },
          { name: "" },
          { sales: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { status: "" },
          { comments: "" },
          { map_status: "" },
          { concept_map_uuid: "" },
          { assigned_reviewer: "" },
          { "Custom Column 1": "" },
          { additional_context: "" },
          { "Custom Column 2": "" },
          { version: "" },
          { title: "" },
          { id: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { publisher: "" },
          { email: "" },
          { description: "" },
          { purpose: "" },
          { no_map: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { uuid: false },
          { "Custom Column 1": false },
          { "Custom Column 2": false },
          { "Custom Column 3": false },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "Mapping Count Here" },
          { "Custom Column 2": "Review Count Here" },
          { "Custom Column 3": "Adjudication Count" },
        ],
      }}
      columnWidths={[
        { object: { id: "__retool__action_list", value: 459.796875 } },
        { object: { id: "purpose", value: 149.71875 } },
        { object: { id: "Custom Column 2", value: 144.71875 } },
        { object: { id: "Custom Column 3", value: 145.359375 } },
        { object: { id: "Custom Column 1", value: 143.0546875 } },
      ]}
      customButtonName=""
      data="{{load_concept_maps.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </View>
</Container>
