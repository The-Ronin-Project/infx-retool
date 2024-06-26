<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { headerBackground: "rgba(60, 146, 222, 0.12)" },
      { background: "rgb(240, 244, 248)" },
    ],
  }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "canvas" }] }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="e34cc" value="Tab 1" />
      <Option id="15e8a" value="Tab 2" />
      <Option id="f3a1b" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="2e213" viewKey="Ready for Review">
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      value="#### Concepts Ready for Review"
      verticalAlign="center"
    />
    <SplitButton
      id="reassign_reviewer"
      data="{{ get_users_to_assign.data }}"
      labels="Re-Assign to {{ item.first_last_name }}"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      style={{
        ordered: [
          { background: "rgb(159, 179, 200)" },
          { itemText: "rgb(51, 78, 104)" },
        ],
      }}
      styleVariant="solid"
      values="{{ item.user_uuid }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_reviewer_assignment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SplitButton>
    <Text
      id="note"
      _disclosedFields={{ array: [] }}
      value="**{{ready_for_review_but_unassigned.data.count}}** concepts without an assigned reviewer"
      verticalAlign="center"
    />
    <Select
      id="select_user"
      captionByIndex=""
      colorByIndex=""
      data="{{ getUsers_reviewer.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Reviewer"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.user_uuid }}"
    />
    <SplitButton
      id="relationship_splitButton"
      _colorByIndex={["", "", ""]}
      _fallbackTextByIndex={["", "", ""]}
      _imageByIndex={["", "", ""]}
      _values={["", "", ""]}
      disabled="{{transformerHasNoMap.value}}"
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      style={{
        ordered: [
          { background: "rgb(159, 179, 200)" },
          { itemText: "rgb(51, 78, 104)" },
        ],
      }}
      styleVariant="solid"
      tooltipText="This action is disabled when a target code No map is included in the selection."
    >
      <Option
        id="d72bd"
        caption="f2a20235-bd9d-4f6a-8e78-b3f41f97d07f"
        label="Equivalent"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_relationship"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="622af"
        caption="788ed6b8-90b4-4661-bc55-9ab20922fc16"
        label="Source Is Broader Than Target"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_relationship"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="3d96e"
        caption="dca7c556-82d9-4433-8971-0b7edb9c9661"
        label="Source Is Narrower Than Target"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_relationship"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
    <Button
      id="approve_rows_in_view"
      _disclosedFields={{ array: [] }}
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Approve All Selected Rows
"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="approve_all_query_part1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="disapprove_all"
      _disclosedFields={{ array: [] }}
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Reject All Selected Rows"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="disapprove_all_query_part1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="hold_button2"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Save for discussion All Selected"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_all_for_discussion"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container1"
      hidden="false"
      showBody={true}
      showHeader="false
"
    >
      <View id="5949d" viewKey="View 1">
        <Multiselect
          id="mapper_selection"
          data="{{ getUsers_mapper.data }}"
          emptyMessage="No options"
          label="Mapper"
          labels="{{ item.first_last_name }}"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.user_uuid }}"
          wrapTags={true}
        />
      </View>
    </Container>
    <Button
      id="review_queue_trigger"
      styleVariant="solid"
      text="Populate Review Queue"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="populate_review_queue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="review_queue"
      _columns={[
        "concept_map_version_uuid",
        "source_code",
        "source_display",
        "display",
        "relationship_display",
        "target_concept_code",
        "target_concept_display",
        "review_status",
        "relationship_system_uuid",
        "special_use",
        "mapping_comments",
        "reason_for_no_map",
        "source_comments",
        "uuid",
        "target_concept_system",
        "created_date",
        "reviewed_date",
        "author",
        "additional_data",
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
        "mapping_group",
        "mapping_uuid",
        "review_comment",
        "source_code_uuid",
        "reviewed_by",
        "source_system",
        "terminology_version_uuid",
        "count_of_resources_affected",
        "first_last_name",
        "previous_version_context",
        "custom_terminology_uuid",
        "save_for_discussion",
        "first_name",
        "last_name",
        "depends_on_property",
        "depends_on_system",
        "depends_on_value",
        "depends_on_display",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { source_code: "" },
          { source_display: "" },
          { mapping_comments: "" },
          { "Custom Column 1": "" },
          { target_concept_code: "" },
          { target_concept_display: "" },
          { relationship_display: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { source_code: "" },
          { source_display: "" },
          { mapping_comments: "" },
          { "Custom Column 1": "" },
          { target_concept_code: "" },
          { target_concept_display: "" },
          { relationship_display: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { special_use: false },
          { display: false },
          { additional_data: true },
          { relationship_system_uuid: false },
          { created_date: false },
          { relationship_code_uuid: false },
          { count_of_resources_affected: false },
          { source_code_uuid: false },
          { author: true },
          { mapping_uuid: false },
          { target_concept_system_version_uuid: false },
          { code: false },
          { terminology_version_uuid: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: true },
          { target_concept_code: true },
          { assigned_mapper: false },
          { source_system: false },
          { target_concept_system: false },
          { comments: false },
          { last_name: false },
          { map_status: false },
          { source_concept_uuid: false },
          { reviewed_date: false },
          { assigned_reviewer: false },
          { additional_context: false },
          { review_comment: false },
          { source_comments: false },
          { review_status: false },
          { first_name: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { resource_count: false },
          { no_map: false },
          { source_uuid: false },
          { reviewed_by: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      allowMultiRowSelect={true}
      applyDynamicSettingsToColumnOrder={false}
      columnAlignment={{
        ordered: [
          { source_code: "left" },
          { source_display: "left" },
          { mapping_comments: "left" },
          { "Custom Column 1": "left" },
          { target_concept_code: "left" },
          { target_concept_display: "left" },
          { relationship_display: "left" },
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
          { first_last_name: "" },
          { relationship_code_uuid: "" },
          { count_of_resources_affected: "" },
          { depends_on_value: "" },
          { source_code_uuid: "" },
          { model_output_score: "" },
          { author: "" },
          { name: "" },
          { mapping_uuid: "" },
          { sales: "" },
          { target_concept_system_version_uuid: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { deleted_timestamp: "" },
          { source_code: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
          { source_system: "" },
          { target_concept_system: "" },
          { comments: "" },
          { last_name: "" },
          { map_status: "" },
          { custom_terminology_uuid: "" },
          { source_concept_uuid: "" },
          { reviewed_date: "" },
          { assigned_reviewer: "" },
          { previous_mapping_context: "" },
          { model_run_time: "" },
          { additional_context: "" },
          { depends_on_system: "" },
          { review_comment: "" },
          { source_comments: "" },
          { review_status: "" },
          { depends_on_display: "" },
          { first_name: "" },
          { id: "" },
          { relationship_display: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { email: "" },
          { deleted_by: "" },
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
        ordered: [
          { source_code: "TextMultiDataCell" },
          { source_display: "TextMultiDataCell" },
          { mapping_comments: "TextMultiDataCell" },
          { "Custom Column 1": "ModalDataCell" },
          { target_concept_code: "TextDataCell" },
          { target_concept_display: "TextMultiDataCell" },
          { relationship_display: "TextMultiDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { previous_version_context: "Previous Version Context" },
          { display: "source display" },
          { additional_data: "ℹ️" },
          { mapping_comments: "Mapping Comments" },
          { first_last_name: "Assigned Reviewer" },
          { count_of_resources_affected: "Resource Count" },
          { author: "Mapper" },
          { reason_for_no_map: "No Map Reason" },
          { source_code: "Source Code" },
          { target_concept_code: "Target Code" },
          { assigned_reviewer: "Assigned Reviewer" },
          { "Custom Column 1": "Additional Data" },
          { relationship_display: "Relationship" },
          { target_concept_display: "Target Concept Display" },
          { source_display: "Source Display" },
        ],
      }}
      columnMappers={{ ordered: [{ "Custom Column 1": "View" }] }}
      columnTypeProperties={{
        ordered: [
          { source_code: { ordered: [] } },
          { source_display: { ordered: [] } },
          { mapping_comments: { ordered: [] } },
          { "Custom Column 1": { ordered: [] } },
          { target_concept_code: { ordered: [] } },
          { target_concept_display: { ordered: [] } },
          { relationship_display: { ordered: [] } },
        ],
      }}
      columnWidths={[
        { object: { id: "display", value: 436 } },
        { object: { id: "__retool__action_list", value: 124 } },
        { object: { id: "count_of_resources_affected", value: 119 } },
        { object: { id: "source_code", value: 253 } },
        { object: { id: "author", value: 138 } },
        { object: { id: "mapping_comments", value: 217.5 } },
        { object: { id: "target_concept_display", value: 424 } },
        { object: { id: "relationship_display", value: 215.171875 } },
        { object: { id: "target_concept_code", value: 225.15625 } },
        { object: { id: "previous_version_context", value: 153 } },
        { object: { id: "assigned_reviewer", value: 145 } },
        { object: { id: "additional_data", value: 335 } },
        { object: { id: "reason_for_no_map", value: 137 } },
        { object: { id: "source_display", value: 539.15625 } },
      ]}
      customButtonName=""
      data="{{populate_review_queue.data}}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      dynamicColumnSettings=""
      events={[]}
      overflowType="scroll"
      showBoxShadow={false}
      showClearSelection={true}
      showPaginationOnTop={true}
    >
      <TableLegacy
        id="table1"
        _compatibilityMode={false}
        columnColors={{
          ordered: [
            { special_use: "" },
            { display: "" },
            { additional_data: "" },
            { relationship_system_uuid: "" },
            { mapping_comments: "" },
            { created_date: "" },
            { relationship_code_uuid: "" },
            { source_code_uuid: "" },
            { author: "" },
            { mapping_uuid: "" },
            { target_concept_system_version_uuid: "" },
            { code: "" },
            { terminology_version_uuid: "" },
            { mapping_group: "" },
            { system: "" },
            { reason_for_no_map: "" },
            { source_code: "" },
            { target_concept_code: "" },
            { assigned_mapper: "" },
            { source_system: "" },
            { target_concept_system: "" },
            { comments: "" },
            { map_status: "" },
            { source_concept_uuid: "" },
            { reviewed_date: "" },
            { assigned_reviewer: "" },
            { additional_context: "" },
            { review_comment: "" },
            { source_comments: "" },
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
        customButtonName=""
        data="{{review_queue.selectedRow.data}}"
        doubleClickToEdit={true}
        showBoxShadow={false}
      />
    </TableLegacy>
    <JSONExplorer
      id="jsonExplorer2"
      hidden={
        '{{load_metadata.dataArray[0].target_value_set_uuid!="cf7f9f1a-cb07-49d1-a34d-b7ced26d8ef8"}}'
      }
      value="{{load_depends_on_data.data.json_result[0]}}"
    />
    <Module
      id="medicationAdditionalContext1"
      hidden={
        '{{load_metadata.dataArray[0].target_value_set_uuid!="cf7f9f1a-cb07-49d1-a34d-b7ced26d8ef8"}}'
      }
      name="Medication Additional Context"
      pageUuid="8f778080-befd-11ee-8ba3-df9a2fb4e074"
      source_code="{{review_queue.selectedRow.data[0].code.replace(/</g, '&lt;').replace(/>/g, '&gt;')}}"
    />
    <JSONExplorer
      id="jsonExplorer1"
      hidden="{{!(review_queue.selectedRow && review_queue.selectedRow.data[0]?.additional_data && Object.keys(review_queue.selectedRow.data[0].additional_data).length > 0)}}"
      value="{{review_queue.selectedRow.data[0].additional_data}}"
    />
    <TextArea
      id="review_comment_all"
      _disclosedFields={{ array: [] }}
      autoResize={true}
      label="Comment On All Selected Rows (Optional)"
      labelPosition="top"
      minLines={2}
      placeholder="Type in review comment before approving/rejecting all selected rows"
    />
    <Button
      id="approve_2"
      _disclosedFields={{ array: [] }}
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Approve All Selected Rows"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="approve_all_query_part1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="disapprove_2"
      _disclosedFields={{ array: [] }}
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Reject All Selected Rows"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="disapprove_all_query_part1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="hold_button"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Save for discussion All Selected"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_all_for_discussion"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="d4435" viewKey="Concepts for Discussion">
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="#### Concepts for Discussion"
      verticalAlign="center"
    />
    <TableLegacy
      id="discussion_table"
      _columns={[
        "code",
        "display",
        "additional_data",
        "mapping_comments",
        "review_comment",
        "uuid",
        "additional_context",
        "target_concept_code",
        "target_concept_display",
        "count_of_resources_affected",
        "author",
        "assigned_mapper",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { target_concept_code: "" },
          { count_of_resources_affected: "sum" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { target_concept_code: "" },
          { count_of_resources_affected: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { first_last_name: true },
          { mapping_group: false },
          { system: false },
          { assigned_mapper: false },
          { comments: false },
          { last_name: false },
          { map_status: false },
          { assigned_reviewer: false },
          { additional_context: true },
          { first_name: false },
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
            { actionButtonText: "Back to mapping" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "discussion_return_to_mapper" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{currentRow.target_concept_code != null}} \n",
            },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Reject" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "reject_discussion" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{currentRow.target_concept_code == null}}",
            },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Approve" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "approve_discussion" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{currentRow.target_concept_code == null}}",
            },
          ],
        },
      ]}
      columnAlignment={{
        ordered: [
          { code: "left" },
          { "Custom Column 1": "left" },
          { target_concept_code: "right" },
          { count_of_resources_affected: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { mapper: "" },
          { display: "" },
          { additional_data: "" },
          { mapping_comments: "" },
          { first_last_name: "" },
          { count_of_resources_affected: "" },
          { author: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
          { comments: "" },
          { last_name: "" },
          { map_status: "" },
          { assigned_reviewer: "" },
          { additional_context: "" },
          { review_comment: "" },
          { review_status: "" },
          { first_name: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { target_concept_display: "" },
          { no_map: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "button" },
          { target_concept_code: "TextDataCell" },
          { count_of_resources_affected: "NumberDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { mapper: "Mapper" },
          { display: "Source Display" },
          { additional_data: "ℹ️" },
          { mapping_comments: "Mapping Comment" },
          { first_last_name: "Mapper" },
          { count_of_resources_affected: "Resource Count" },
          { author: "Mapper" },
          { code: "Source Code" },
          { target_concept_code: "Target Code" },
          { assigned_mapper: "Assigned Mapper" },
          { comments: "Comments" },
          { "Custom Column 1": "Send back to mapping queue" },
          { additional_context: "Additional Context" },
          { review_comment: "Review Comment" },
          { target_concept_display: "Target Display" },
        ],
      }}
      columnMappers={{
        ordered: [{ "Custom Column 1": "Send back to mapping queue" }],
      }}
      columnTypeProperties={{
        ordered: [
          { target_concept_code: { ordered: [] } },
          {
            count_of_resources_affected: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { buttonType: "action" },
                { action: "send_back_to_mapping" },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "code", value: 192.6640625 } },
        { object: { id: "__retool__action_list", value: 211 } },
        { object: { id: "target_concept_display", value: 217 } },
        { object: { id: "count_of_resources_affected", value: 117 } },
        { object: { id: "target_concept_code", value: 159 } },
        { object: { id: "comments", value: 367 } },
        { object: { id: "review_comment", value: 151 } },
        { object: { id: "additional_context", value: 146 } },
        { object: { id: "assigned_mapper", value: 144 } },
        { object: { id: "mapping_comments", value: 120.01736450195312 } },
        { object: { id: "display", value: 383.0312805175781 } },
        { object: { id: "additional_data", value: 48.99652862548828 } },
      ]}
      customButtonName=""
      data="{{ discussion_concepts.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    />
  </View>
</Container>
