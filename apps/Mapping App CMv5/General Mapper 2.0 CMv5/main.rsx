<App>
  <Include src="./functions.rsx" />
  <AppStyles
    id="$appStyles"
    css=":root { --retool-canvas-max-width: 10000px; }"
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    paddingType="normal"
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(240, 244, 248)" }] }}
    type="main"
  >
    <Alert
      id="alert1"
      description="Select an item from mapping queue to get started"
      hidden="{{mapping_queue.selectedRow.data != undefined}}"
      title="Info"
    />
    <Alert
      id="alert2"
      description="See rejected mappings in Currently Mapped Targets section"
      hidden="{{mapping_group_select.value != 'rejected'}}"
      title="Reviewing Rejected Mappings"
      type="warning"
    />
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="**Mapping Queue**"
      verticalAlign="center"
    />
    <Text
      id="text8"
      _disclosedFields={{ array: [] }}
      value="**Currently Mapping**"
      verticalAlign="center"
    />
    <Select
      id="user_select"
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
      placeholder="Select User"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{getUserMatch.data.uuid[0]}}"
      values="{{ item.user_uuid }}"
    >
      <Option id="a5928" value="Option 1" />
      <Option id="35045" value="Option 2" />
      <Option id="22c73" value="Option 3" />
    </Select>
    <Select
      id="mapping_group_select"
      data="{{ load_mapping_groups.data }}"
      label="Queue"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.mapping_group }}"
    />
    <Text
      id="text9"
      _disclosedFields={{ array: [] }}
      heightType="fixed"
      imageWidth="fill"
      style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
      value="{{mapping_queue.selectedRow.data[0].code.replace(/</g, '&lt;').replace(/>/g, '&gt;')}}"
      verticalAlign="center"
    />
    <TableLegacy
      id="mapping_queue"
      _columns={[
        "uuid",
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
      ]}
      _columnSummaryTypes={{
        ordered: [{ "Custom Column 2": "" }, { display: "" }, { code: "" }],
      }}
      _columnSummaryValues={{
        ordered: [{ "Custom Column 2": "" }, { display: "" }, { code: "" }],
      }}
      _columnVisibility={{
        ordered: [
          { previous_version_context: false },
          { save_for_discussion: false },
          { name: false },
          { system_uuid: false },
          { sales: false },
          { code: true },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { code_schema: false },
          { custom_terminology_code_uuid: false },
          { comments: false },
          { map_status: false },
          { custom_terminology_uuid: false },
          { assigned_reviewer: false },
          { additional_context: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { email: false },
          { resource_count: false },
          { no_map: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Complete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "complete_mapping" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{load_settings.data.auto_advance_mapping[0] == true}}",
            },
          ],
        },
      ]}
      actionButtonSelectsRow={false}
      allowMultiRowSelect={true}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { "Custom Column 2": "left" },
          { display: "left" },
          { code: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { previous_version_context: "" },
          { save_for_discussion: "" },
          { display: "" },
          { code_simple: "" },
          { code_jsonb: "" },
          { name: "" },
          { system_uuid: "" },
          { sales: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { code_schema: "" },
          { custom_terminology_code_uuid: "" },
          { comments: "" },
          { map_status: "" },
          { custom_terminology_uuid: "" },
          { assigned_reviewer: "" },
          { previous_mapping_context: "" },
          { additional_context: "" },
          { id: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { email: "" },
          { resource_count: "" },
          { no_map: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "button" },
          { "Custom Column 2": "SingleTagDataCell" },
          { display: "TextMultiDataCell" },
          { code: "TextDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { id: "mda display" },
          { code: "Source Code" },
          { display: "Source Display" },
          { code_simple: "Source Code Simple" },
          { code_jsonb: "Source Code jsonb" },
        ],
      }}
      columnMappers={{ ordered: [{ "Custom Column 2": "" }] }}
      columnTypeProperties={{
        ordered: [
          {
            "Custom Column 2": {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: { array: [] } },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
          { display: { ordered: [] } },
          { code: { ordered: [] } },
        ],
      }}
      columnWidths={[
        { object: { id: "code", value: 204 } },
        { object: { id: "display", value: 309.6614685058594 } },
        { object: { id: "code_jsonb", value: 249.08334350585938 } },
      ]}
      customButtonName=""
      data="{{combined_queue_query.data}}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      dynamicRowHeights={true}
      events={[]}
      overflowType="scroll"
      showBoxShadow={false}
      showClearSelection={true}
    />
    <Text
      id="currently_mapping_display"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
      value="#### {{mapping_queue.selectedRow.data[0].display.replace(/</g, '&lt;').replace(/>/g, '&gt;')}}"
      verticalAlign="center"
    />
    <Divider id="divider3" _disclosedFields={{ array: [] }} />
    <Module
      id="medicationAdditionalContext1"
      hidden={
        '{{load_metadata.dataArray[0].target_value_set_uuid!="cf7f9f1a-cb07-49d1-a34d-b7ced26d8ef8"}}'
      }
      name="Medication Additional Context"
      pageUuid="8f778080-befd-11ee-8ba3-df9a2fb4e074"
      source_code="{{mapping_queue.selectedRow.data[0].code.replace(/</g, '&lt;').replace(/>/g, '&gt;')}}"
    />
    <Text id="text10" value="**Depends On Data**" verticalAlign="center" />
    <JSONExplorer
      id="jsonExplorer2"
      value="{{load_depends_on_data.data.json_result[0]}}"
    />
    <Text id="text11" value="**Additional Info**" verticalAlign="center" />
    <JSONExplorer
      id="jsonExplorer1"
      hidden=""
      value="{{source_term_additional_info.data.additional_data[0]}}"
    />
    <TextArea
      id="mapping_comments"
      _disclosedFields={{ array: [] }}
      autoResize={true}
      label="Mapping Comments"
      labelCaption="Used when a target has been selected and a mapping will be created."
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <Text
      id="textbox"
      _disclosedFields={{ array: [] }}
      tooltipText="Other will only be an option once a mapping comment is present."
      value="**Source Actions**"
      verticalAlign="center"
    />
    <SplitButton
      id="no_map"
      _colorByIndex={["", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", ""]}
      _imageByIndex={["", "", "", "", ""]}
      _values={["", "", "Action 6", "Action 4", "Action 5"]}
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      styleVariant="solid"
    >
      <Option
        id="e85eb"
        disabled={false}
        hidden={false}
        label="Not enough information"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="set_reason_not_enough_information"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="8404d"
        disabled={false}
        hidden={false}
        label="Not in target code system"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="set_reason_not_in_target_code_system"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="70dcf"
        disabled={false}
        hidden={false}
        label="Conflicting information"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="set_reason_conflicting_information"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="38ef5"
        disabled={false}
        hidden={
          '{{ !mapping_comments.value || mapping_comments.value === "" }}'
        }
        label="Other"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="set_reason_other"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="23685"
        disabled={false}
        hidden={false}
        label="Save for discussion"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="save_for_discussion_query"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        enabled="{{no_map_reason_input.value != ''}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="no_map_it"
        targetId="82bbe"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{no_map_reason_input.value == ''}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { title: "Must Give Reason" },
                  {
                    description: "If Other is selected, you must type a reason",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        targetId="82bbe"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="no_map_it"
        targetId="20e16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="no_map_it"
        targetId="b7644"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="no_map_it"
        targetId="0bd43"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="no_map_it"
        targetId="ac651"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SplitButton>
    <Divider id="divider2" _disclosedFields={{ array: [] }} />
    <Container
      id="current_mappings"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <View id="a319d" viewKey="Currently Mapped Targets">
        <TableLegacy
          id="mapped_targets"
          _columns={[
            "cr_uuid",
            "concept_map_version_uuid",
            "reviewer_name",
            "display",
            "target_concept_code",
            "target_concept_display",
            "mapping_comments",
            "review_status",
            "uuid",
            "target_concept_system",
            "created_date",
            "reviewed_date",
            "author",
            "source_concept_uuid",
            "relationship_code_uuid",
            "target_concept_system_version_uuid",
            "review_comment",
            "assigned_reviewer",
            "reviewed_by",
            "model_name",
            "model_run_time",
            "model_version",
            "model_output_score",
            "reason_for_no_map",
          ]}
          _columnSummaryTypes={{ ordered: [{ target_concept_code: "" }] }}
          _columnSummaryValues={{ ordered: [{ target_concept_code: "" }] }}
          _columnVisibility={{
            ordered: [
              { map_program_date_time: false },
              { deduplication_hash: false },
              { model_name: false },
              { model_version: false },
              { created_date: false },
              { relationship_code_uuid: false },
              { rc_uuid: false },
              { model_output_score: false },
              { cr_uuid: false },
              { mapping_id: false },
              { target_concept_system_version_uuid: false },
              { map_program_prediction_id: false },
              { code: false },
              { mapping_group: false },
              { system: false },
              { reason_for_no_map: true },
              { deleted_timestamp: false },
              { mapped_date_time: false },
              { assigned_mapper: false },
              { target_concept_terminology_version_uuid: false },
              { target_concept_system: false },
              { map_status: false },
              { reviewed_date_time: false },
              { source_concept_uuid: false },
              { reviewed_date: false },
              { assigned_reviewer: false },
              { model_run_time: false },
              { additional_context: false },
              { deleted_date_time: false },
              { map_program_version: false },
              { map_program_confidence_score: false },
              { uuid: false },
              { concept_map_version_uuid: false },
              { deleted_by: false },
              { no_map: false },
              { reviewed_by: false },
            ],
          }}
          _compatibilityMode={false}
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Delete" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "delete_mapping" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                { actionButtonDisabled: "" },
              ],
            },
          ]}
          columnAlignment={{ ordered: [{ target_concept_code: "left" }] }}
          columnColors={{
            ordered: [
              { map_program_date_time: "" },
              { deduplication_hash: "" },
              { model_name: "" },
              { display: "" },
              { model_version: "" },
              { mapped_by: "" },
              { reviewer_name: "" },
              { mapping_comments: "" },
              { created_date: "" },
              { relationship_code_uuid: "" },
              { rc_uuid: "" },
              { model_output_score: "" },
              { cr_uuid: "" },
              { author: "" },
              { mapping_id: "" },
              { target_concept_system_version_uuid: "" },
              { map_program_prediction_id: "" },
              { code: "" },
              { mapping_group: "" },
              { system: "" },
              { reason_for_no_map: "" },
              { deleted_timestamp: "" },
              { target_concept_code: "" },
              { mapped_date_time: "" },
              { assigned_mapper: "" },
              { target_concept_terminology_version_uuid: "" },
              { target_concept_system: "" },
              { comments: "" },
              { map_status: "" },
              { reviewed_date_time: "" },
              { source_concept_uuid: "" },
              { reviewed_date: "" },
              { assigned_reviewer: "" },
              { model_run_time: "" },
              { additional_context: "" },
              { deleted_date_time: "" },
              { review_comment: "" },
              { relationship: "" },
              { review_status: "" },
              { map_program_version: "" },
              { map_program_confidence_score: "" },
              { review_comments: "" },
              { uuid: "" },
              { concept_map_version_uuid: "" },
              { deleted_by: "" },
              { target_concept_display: "" },
              { no_map: "" },
              { user_name: "" },
              { reviewed_by: "" },
            ],
          }}
          columnFormats={{ ordered: [{ target_concept_code: "TextDataCell" }] }}
          columnHeaderNames={{
            ordered: [
              { display: "Display" },
              { mapped_by: "Author" },
              { reviewer_name: "Reviewer" },
              { mapping_comments: "Mapping Comments" },
              { author: "Mapper" },
              { reason_for_no_map: "No Map Reason" },
              { target_concept_code: "Target Concept Code" },
              { review_comment: "Review Comment" },
              { review_status: "Review Status" },
              { review_comments: "Review Comments" },
              { target_concept_display: "Target Concept Display" },
              { reviewed_by: "reviewed_by" },
            ],
          }}
          columnTypeProperties={{
            ordered: [{ target_concept_code: { ordered: [] } }],
          }}
          columnWidths={[
            { object: { id: "target_concept_code", value: 175 } },
            { object: { id: "display", value: 129 } },
          ]}
          customButtonName=""
          data="{{load_mapped_targets.data}}"
          doubleClickToEdit={true}
          showBoxShadow={false}
        />
      </View>
      <View id="35d58" viewKey="Previously Mapped Targets">
        <Table
          id="previously_mapped_table"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ load_previously_mapped_targets.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          enableSaveActions={true}
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="a5238"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="review_status"
            label="Review status"
            placeholder="Enter value"
            position="center"
            size={97.21875}
            summaryAggregationMode="none"
          />
          <Column
            id="5fae2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="mapping_comments"
            label="Mapping comments"
            placeholder="Enter value"
            position="center"
            size={130.875}
            summaryAggregationMode="none"
          />
          <Column
            id="8ce8d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="uuid"
            label="UUID"
            placeholder="Enter value"
            position="center"
            size={267.734375}
            summaryAggregationMode="none"
          />
          <Column
            id="e41a7"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="display"
            label="Relationship"
            placeholder="Enter value"
            position="center"
            size={74.734375}
            summaryAggregationMode="none"
          />
          <Column
            id="48387"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="target_concept_code"
            label="Target concept code"
            placeholder="Enter value"
            position="center"
            size={136.03125}
            summaryAggregationMode="none"
          />
          <Column
            id="3770f"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="target_concept_display"
            label="Target concept display"
            placeholder="Enter value"
            position="center"
            size={276.359375}
            summaryAggregationMode="none"
          />
          <Column
            id="ee8f2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="target_concept_system"
            label="Target concept system"
            placeholder="Enter value"
            position="center"
            size={149.578125}
            summaryAggregationMode="none"
          />
          <Column
            id="c4aa5"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            hidden="true"
            key="created_date"
            label="Created date"
            placeholder="Enter value"
            position="center"
            size={152.359375}
            summaryAggregationMode="none"
          />
          <Column
            id="801bd"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="reviewed_date"
            label="Reviewed date"
            placeholder="Enter value"
            position="center"
            size={101.28125}
            summaryAggregationMode="none"
          />
          <Column
            id="8212e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="author"
            label="Author"
            placeholder="Enter value"
            position="center"
            size={104.71875}
            summaryAggregationMode="none"
          />
          <Column
            id="627c3"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="source_concept_uuid"
            label="Source concept UUID"
            placeholder="Enter value"
            position="center"
            size={266.71875}
            summaryAggregationMode="none"
          />
          <Column
            id="658e0"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="relationship_code_uuid"
            label="Relationship code UUID"
            placeholder="Enter value"
            position="center"
            size={265.0625}
            summaryAggregationMode="none"
          />
          <Column
            id="a7206"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="target_concept_system_version_uuid"
            label="Target concept system version UUID"
            placeholder="Enter value"
            position="center"
            size={271.515625}
            summaryAggregationMode="none"
          />
          <Column
            id="5858e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="review_comment"
            label="Review comment"
            placeholder="Enter value"
            position="center"
            size={224.484375}
            summaryAggregationMode="none"
          />
          <Column
            id="57d07"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="reviewed_by"
            label="Reviewed by"
            placeholder="Enter value"
            position="center"
            size={104.71875}
            summaryAggregationMode="none"
          />
          <Column
            id="4cc73"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="model_name"
            label="Model name"
            placeholder="Enter value"
            position="center"
            size={87}
            summaryAggregationMode="none"
          />
          <Column
            id="ed07b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="model_run_time"
            label="Model run time"
            placeholder="Enter value"
            position="center"
            size={102.828125}
            summaryAggregationMode="none"
          />
          <Column
            id="840c4"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="model_version"
            label="Model version"
            placeholder="Enter value"
            position="center"
            size={97.78125}
            summaryAggregationMode="none"
          />
          <Column
            id="5e4b1"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="model_output_score"
            label="Model output score"
            placeholder="Enter value"
            position="center"
            size={128.78125}
            summaryAggregationMode="none"
          />
          <Column
            id="d450c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="deleted_timestamp"
            label="Deleted timestamp"
            placeholder="Enter value"
            position="center"
            size={142.578125}
            summaryAggregationMode="none"
          />
          <Column
            id="abad4"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="deleted_by"
            label="Deleted by"
            placeholder="Enter value"
            position="center"
            size={104.71875}
            summaryAggregationMode="none"
          />
          <Column
            id="8d9c5"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="assigned_reviewer"
            label="Assigned reviewer"
            placeholder="Enter value"
            position="center"
            size={277.359375}
            summaryAggregationMode="none"
          />
          <Column
            id="73c68"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="reason_for_no_map"
            label="Reason for no map"
            placeholder="Enter value"
            position="center"
            size={123.90625}
            summaryAggregationMode="none"
          />
          <Column
            id="2e170"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="reviewer_name"
            label="Reviewer name"
            placeholder="Enter value"
            position="center"
            size={104.71875}
            summaryAggregationMode="none"
          />
          <Column
            id="87b2e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="cr_uuid"
            label="Cr UUID"
            placeholder="Enter value"
            position="center"
            size={267.734375}
            summaryAggregationMode="none"
          />
          <Column
            id="949df"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="concept_map_version_uuid"
            label="Concept map version UUID"
            placeholder="Enter value"
            position="center"
            size={172.140625}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="previously_mapped_table"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="previously_mapped_table"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Select
      id="select_rel"
      captionByIndex=""
      colorByIndex=""
      data="{{ relationship_choices.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Select Relationship"
      labels="{{ item.display }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.uuid }}"
    >
      <Option id="328c5" value="Equivalent" />
      <Option id="8f593" value="Broader" />
      <Option id="f4afc" value="Narrower" />
    </Select>
    <TextInput
      id="search_text_input"
      _disclosedFields={{ array: [] }}
      label="Search Target Concept"
      placeholder="Enter value"
      showClear={true}
      value={
        '{{load_settings.data.auto_fill_search[0] ? mapping_queue.selectedRow.data[0].display : ""}}'
      }
    />
    <Container
      id="search_results_container"
      currentViewKey="{{ self.viewKeys[0] }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <View
        id="92fd1"
        disabled={false}
        hidden={false}
        iconPosition="left"
        label="Branded Pack ({{search_rxnorm.data.results.BPCK.length}})"
        viewKey="Branded Pack"
      >
        <TableLegacy
          id="search_results_table"
          _columns={[
            "rxcui",
            "language",
            "name",
            "suppress",
            "synonym",
            "tty",
            "umlscui",
          ]}
          _columnSummaryTypes={{
            ordered: [{ rxcui: "" }, { tags: "" }, { code: "" }],
          }}
          _columnSummaryValues={{
            ordered: [{ rxcui: "" }, { tags: "" }, { code: "" }],
          }}
          _columnVisibility={{
            ordered: [
              { strength: false },
              { rxtermsDoseForm: false },
              { rxnormDoseForm: false },
              { termType: false },
              { route: false },
              { code: true },
              { displayName: false },
              { terminology_version_uuid: false },
              { brandName: false },
              { fullGenericName: false },
              { suppress: false },
              { language: false },
              { umlscui: false },
              { tty: false },
              { fullName: false },
              { genericRxcui: false },
              { synonym: false },
              { concept_map_version_uuid: false },
            ],
          }}
          _compatibilityMode={false}
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Map {{select_rel.selectedLabel}} " },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "map_it" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                {
                  actionButtonDisabled:
                    "{{select_rel.value == null || load_mapped_targets.dataArray.filter(x => x.review_status[0] === null).map(x => x.target_concept_code[0]).includes(currentRow.code) || currentRow.code === 'No map'}}",
                },
              ],
            },
          ]}
          columnAlignment={{
            ordered: [{ rxcui: "left" }, { tags: "left" }, { code: "left" }],
          }}
          columnColors={{
            ordered: [
              { strength: "" },
              { rxtermsDoseForm: "" },
              { display: "" },
              { rxnormDoseForm: "" },
              { termType: "" },
              { route: "" },
              { name: "" },
              { code: "" },
              { displayName: "" },
              { terminology_version_uuid: "" },
              {
                rxcui:
                  "{{search_rxnorm.data.top_rxcui == self ? '#C1E1C1' : 'white'}}",
              },
              { brandName: "" },
              { fullGenericName: "" },
              { suppress: "" },
              { language: "" },
              { umlscui: "" },
              { tags: "" },
              { tty: "" },
              { fullName: "" },
              { genericRxcui: "" },
              { synonym: "" },
              { concept_map_version_uuid: "" },
            ],
          }}
          columnEditable={{ ordered: [{ tags: false }] }}
          columnFormats={{
            ordered: [
              { rxcui: "TextDataCell" },
              { tags: "SingleTagDataCell" },
              { code: "TextDataCell" },
            ],
          }}
          columnMappers={{ ordered: [{ tags: "" }] }}
          columnTypeProperties={{
            ordered: [
              { rxcui: { ordered: [] } },
              {
                tags: {
                  ordered: [
                    { optionData: "{{ currentColumn }}" },
                    { colorMode: "auto" },
                    { allowCustomValue: true },
                    { optionLabels: "" },
                    { optionColors: { array: [] } },
                    { optionValues: { array: [] } },
                  ],
                },
              },
              { code: { ordered: [] } },
            ],
          }}
          columnWidths={[
            { object: { id: "rxcui", value: 93.390625 } },
            { object: { id: "__retool__action_list", value: 141.875 } },
            { object: { id: "code", value: 167.5625 } },
            { object: { id: "display", value: 479.78125 } },
          ]}
          customButtonName=""
          data="{{aggregate_search.data.hits.hits.map(hit => hit['_source'])}}"
          defaultSelectedRow="none"
          doubleClickToEdit={true}
          events={[]}
          overflowType="scroll"
          showBoxShadow={false}
          style={{
            ordered: [
              { alternateRowBackground: "rgba(255, 255, 255, 1)" },
              { background: "surfacePrimary" },
              { summaryBackground: "surfacePrimary" },
            ],
          }}
        />
      </View>
    </Container>
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
    <SplitButton
      id="map_button"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      hidden={'{{rxcui_input.value == ""}}'}
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      styleVariant="solid"
    >
      <Option id="b9414" label="Map as Equivalent">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="map_equivalent_from_detail_view"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="f1b16" label="Map Source is Narrower than Target">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="map_narrower_from_detail_view"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
    <TableLegacy
      id="table1"
      _columnVisibility={{
        ordered: [{ propCategory: false }, { propName: false }],
      }}
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { propCategory: "" },
          { propName: "" },
          { propValue: "" },
          { propConcept: "" },
        ],
      }}
      columnHeaderNames={{ ordered: [{ propValue: "Ingredients" }] }}
      customButtonName=""
      data="{{getIngredients.data.propConceptGroup.propConcept}}"
      doubleClickToEdit={true}
      hidden={'{{rxcui_input.value == ""}}'}
      rowHeight="compact"
      showBoxShadow={false}
      style={{ ordered: [{ headerText: "rgba(3, 3, 3, 1)" }] }}
      useCompactMode={true}
    />
    <TextInput
      id="rxcui_input"
      _disclosedFields={{ array: [] }}
      disabled="true"
      hidden="true"
      label="RxCUI to Map"
      placeholder="Enter RXCUI"
    />
    <KeyValueMap
      id="detailView"
      data="{{getInfoBeforeMapping.data}}"
      hidden={'{{rxcui_input.value == ""}}'}
      prevRowFormats={{ ordered: [] }}
      prevRowMappers={{ ordered: [{ rxcui: "<strong>{{self}}</strong>" }] }}
      rowMappers={{ ordered: [{ rxcui: "<strong>{{self}}</strong>" }] }}
      rowMappersRenderAsHTML={{ ordered: [{ rxcui: true }] }}
      rows={[
        "a",
        "b",
        "c",
        "pluginType",
        "namespace",
        "queryRefreshTime",
        "paginationLimit",
        "body",
        "lastReceivedFromResourceAt",
        "queryDisabledMessage",
        "successMessage",
        "queryDisabled",
        "playgroundQuerySaveId",
        "resourceNameOverride",
        "runWhenModelUpdates",
        "paginationPaginationField",
        "headers",
        "showFailureToaster",
        "paginationEnabled",
        "query",
        "playgroundQueryUuid",
        "playgroundQueryId",
        "runWhenPageLoadsDelay",
        "cookies",
        "isImported",
        "showSuccessToaster",
        "cacheKeyTtl",
        "metadata",
        "changesetObject",
        "errorTransformer",
        "confirmationMessage",
        "isFetching",
        "changeset",
        "rawData",
        "queryTriggerDelay",
        "resourceTypeOverride",
        "enableErrorTransformer",
        "showLatestVersionUpdatedWarning",
        "paginationDataField",
        "timestamp",
        "enableTransformer",
        "showUpdateSetValueDynamicallyToggle",
        "runWhenPageLoads",
        "transformer",
        "queryTimeout",
        "requireConfirmation",
        "type",
        "queryFailureConditions",
        "changesetIsObject",
        "enableCaching",
        "bodyType",
        "queryThrottleTime",
        "updateSetValueDynamically",
        "notificationDuration",
        "id",
        "requestSentTimestamp",
        "finished",
        "queryRunTime",
        "error",
        "data",
        "servedFromCache",
        "rxtermsProperties",
        "rxcui",
        "fullName",
        "fullGenericName",
        "brandName",
        "displayName",
        "synonym",
        "strength",
        "rxtermsDoseForm",
        "route",
        "termType",
        "genericRxcui",
        "rxnormDoseForm",
        "suppress",
        "statusCode",
        "message",
      ]}
      rowVisibility={{
        ordered: [
          { queryRefreshTime: true },
          { strength: true },
          { paginationLimit: true },
          { a: true },
          { b: true },
          { rxtermsDoseForm: true },
          { body: true },
          { lastReceivedFromResourceAt: true },
          { queryDisabledMessage: true },
          { c: true },
          { servedFromCache: true },
          { rxnormDoseForm: true },
          { successMessage: true },
          { queryDisabled: true },
          { playgroundQuerySaveId: true },
          { resourceNameOverride: true },
          { termType: true },
          { runWhenModelUpdates: true },
          { paginationPaginationField: true },
          { headers: true },
          { message: true },
          { showFailureToaster: true },
          { paginationEnabled: true },
          { query: true },
          { playgroundQueryUuid: true },
          { playgroundQueryId: true },
          { error: true },
          { route: true },
          { runWhenPageLoadsDelay: true },
          { data: true },
          { pluginType: true },
          { displayName: true },
          { isImported: true },
          { showSuccessToaster: true },
          { cacheKeyTtl: true },
          { requestSentTimestamp: true },
          { cookies: true },
          { metadata: true },
          { queryRunTime: true },
          { changesetObject: true },
          { errorTransformer: true },
          { rxcui: true },
          { finished: true },
          { confirmationMessage: true },
          { isFetching: true },
          { brandName: true },
          { changeset: true },
          { rawData: true },
          { fullGenericName: true },
          { queryTriggerDelay: true },
          { resourceTypeOverride: true },
          { enableErrorTransformer: true },
          { rxtermsProperties: true },
          { suppress: true },
          { showLatestVersionUpdatedWarning: true },
          { paginationDataField: true },
          { timestamp: true },
          { enableTransformer: true },
          { showUpdateSetValueDynamicallyToggle: true },
          { runWhenPageLoads: true },
          { transformer: true },
          { queryTimeout: true },
          { fullName: true },
          { requireConfirmation: true },
          { genericRxcui: true },
          { type: true },
          { queryFailureConditions: true },
          { id: true },
          { namespace: true },
          { changesetIsObject: true },
          { synonym: true },
          { enableCaching: true },
          { bodyType: true },
          { statusCode: true },
          { queryThrottleTime: true },
          { updateSetValueDynamically: true },
          { notificationDuration: true },
        ],
      }}
    />
  </Frame>
</App>
