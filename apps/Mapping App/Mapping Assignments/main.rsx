<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text2"
      value="**Managing assignments for:**"
      verticalAlign="center"
    />
    <Text
      id="project_name"
      value="#### {{project_metadata.data.title}}"
      verticalAlign="center"
    />
    <Text
      id="project_counts"
      value="**{{total_concepts.data.count}}** Total Concepts

**{{assigned_count.data.assigned_count}}** Assigned
**{{unassigned_count.data.unassigned_count}}** Unassigned

**{{review_count_query.data.review_count}}** Concepts assigned for Review
** **"
      verticalAlign="center"
    />
    <ListView
      id="user_name"
      instances="{{ mapper_assignment_counts.data.first_last_name.length }}"
    >
      <Text
        id="text8"
        hidden="{{i!=0}}"
        value="**Total**"
        verticalAlign="center"
      />
      <Text
        id="text22"
        hidden="{{i!=0}}"
        value="**Actual Mapper**
(not assigned)"
        verticalAlign="center"
      />
      <Text
        id="text6"
        hidden="{{i!=0}}"
        value="**Outstanding**"
        verticalAlign="center"
      />
      <Text
        id="text5"
        hidden="{{i!=0}}"
        value="**Mapper**"
        verticalAlign="center"
      />
      <Text
        id="text7"
        hidden="{{i!=0}}"
        value="**Complete**"
        verticalAlign="center"
      />
      <Divider id="divider1" />
      <Text
        id="text10"
        value="{{ mapper_assignment_counts.data.count[i] }}"
        verticalAlign="center"
      />
      <Text
        id="text11"
        value="{{mapper_unmapped_count.data[mapper_assignment_counts.data.first_last_name[i]] ?? '-'}}"
        verticalAlign="center"
      />
      <Text
        id="text12"
        disableMarkdown={true}
        value="{{mapper_mapped_count.data[mapper_assignment_counts.data.first_last_name[i]] ?? '-'}}"
        verticalAlign="center"
      />
      <Text
        id="text23"
        value="{{author_count.data[mapper_assignment_counts.data.first_last_name[i]] ?? '-'}}"
        verticalAlign="center"
      />
      <Text
        id="text9"
        value="{{ mapper_assignment_counts.data.first_last_name[i] }}"
        verticalAlign="center"
      />
    </ListView>
    <Include src="./src/tabbedContainer2.rsx" />
    <TableLegacy
      id="assignment_queue"
      _columns={[
        "assigned_mapper",
        "assigned_reviewer",
        "mapping_group",
        "count",
        "mapper_uuid",
        "reviewer_uuid",
        "Custom Column 1",
        "Custom Column 2",
      ]}
      _columnSummaryTypes={{
        ordered: [{ "Custom Column 1": "" }, { "Custom Column 2": "" }],
      }}
      _columnSummaryValues={{
        ordered: [{ "Custom Column 1": "" }, { "Custom Column 2": "" }],
      }}
      _columnVisibility={{
        ordered: [
          { uuid: false },
          { mapper_uuid: false },
          { reviewer_uuid: false },
          { "Custom Column 1": true },
          { mapping_group: true },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Unassign \nMapper" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "unassign_mapper" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Unassign \nReviewer" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "unassign_reviewer" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { "Custom Column 2": "left" },
          { count: "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { first_last_name: "" },
          { name: "" },
          { sales: "" },
          { mapping_group: "" },
          { count: "" },
          { assigned_mapper: "" },
          { reviewer_uuid: "" },
          { assigned_reviewer: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { mapper_uuid: "" },
          { id: "" },
          { uuid: "" },
          { email: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { "Custom Column 2": false }],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "ModalDataCell" },
          { "Custom Column 2": "ModalDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "Assign" },
          { "Custom Column 2": "Assign" },
          { assigned_mapper: "Mapper" },
          { assigned_reviewer: "Reviewer" },
          { mapping_group: "mapping group" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "Mapper" },
          { "Custom Column 2": "Reviewer" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { "Custom Column 1": { ordered: [] } },
          { "Custom Column 2": { ordered: [] } },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { buttonType: "action" },
                { action: "unassign_mapper" },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "assigned_reviewer", value: 128.90625 } },
        { object: { id: "mapping_group", value: 105.265625 } },
        { object: { id: "__retool__action_list", value: 283.6328125 } },
        { object: { id: "assigned_mapper", value: 138.90625 } },
        { object: { id: "count", value: 63.015625 } },
        { object: { id: "Custom Column 2", value: 77 } },
        { object: { id: "Custom Column 1", value: 78 } },
      ]}
      customButtonName=""
      data="{{group_count_and_assignee.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    >
      <Text id="text3" value="**Assign Mapper**" verticalAlign="center" />
      <Text id="text4" value="**Assign Reviewer**" verticalAlign="center" />
      <Select
        id="select_mapper"
        data="{{ user_options.data }}"
        label="Mapper"
        labels="{{ `${item.first_name} ${item.last_name}` }}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showClear={true}
        showSelectionIndicator={true}
        values="{{ item.uuid }}"
      />
      <Select
        id="select_reviewer"
        data="{{ user_options.data }}"
        label="Reviewer"
        labels="{{ `${item.first_name} ${item.last_name}` }}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showClear={true}
        showSelectionIndicator={true}
        values="{{ item.uuid }}"
      />
      <Button
        id="reassign_mapper"
        styleVariant="solid"
        text="Assign {{select_mapper.selectedLabel}} as the new mapper"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="mapper_reassignment"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="assign_reviewer"
        styleVariant="solid"
        text="Assign {{select_reviewer.selectedLabel}} as reviewer"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="make_reviewer_assignment"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </TableLegacy>
    <ListView
      id="user_name2"
      instances="{{ mapper_assignment_counts.data.first_last_name.length }}"
    >
      <Text
        id="text24"
        hidden="{{i!=0}}"
        value="**Actual Reviewer** 
(not assigned)"
        verticalAlign="center"
      />
      <Text
        id="text13"
        hidden="{{i!=0}}"
        value="**Reviewer**"
        verticalAlign="center"
      />
      <Text
        id="text16"
        hidden="{{i!=0}}"
        value="**Assigned**"
        verticalAlign="center"
      />
      <Text
        id="text14"
        hidden="{{i!=0}}"
        value="**Outstanding**"
        verticalAlign="center"
      />
      <Text
        id="text15"
        hidden="{{i!=0}}"
        value="**Complete**"
        verticalAlign="center"
      />
      <Divider id="divider2" />
      <Text
        id="text17"
        value="{{reviewer_assignment_counts.data.first_last_name[i]}}"
        verticalAlign="center"
      />
      <Text
        id="text18"
        value="{{reviewer_assignment_counts.data.count[i]}}"
        verticalAlign="center"
      />
      <Text
        id="text19"
        disableMarkdown={true}
        value="{{reviewer_to_do_count.data[reviewer_assignment_counts.data.first_last_name[i]] ?? '-'}}"
        verticalAlign="center"
      />
      <Text
        id="text20"
        disableMarkdown={true}
        value="{{reviewer_reviewed_count.data[reviewer_assignment_counts.data.first_last_name[i]] ?? '-'}}"
        verticalAlign="center"
      />
      <Text
        id="text25"
        disableMarkdown={true}
        value="{{reviewed_by_count.data[mapper_assignment_counts.data.first_last_name[i]] ?? '-'}}"
        verticalAlign="center"
      />
    </ListView>
    <Text
      id="text21"
      value={
        "Note: In the reviewer table , \"Outstanding\" refers to concepts with map_status 'ready for review'"
      }
      verticalAlign="center"
    />
  </Frame>
</App>
