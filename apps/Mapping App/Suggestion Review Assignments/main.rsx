<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Text
      id="text2"
      value="**Managing assignments for**"
      verticalAlign="center"
    />
    <Text
      id="text1"
      value="#### {{project_metadata.data.title}}"
      verticalAlign="center"
    />
    <Text
      id="text3"
      value="**{{assigned_count.data.assigned_count}}** concepts assigned. 
**{{unassigned_count.data.unassigned_count}}** unassigned."
      verticalAlign="center"
    />
    <Text
      id="text5"
      value="#### Make Additional Assignments"
      verticalAlign="center"
    />
    <TextInput id="query" label="Match Source Display" placeholder="%query%" />
    <Text
      id="text4"
      value="**Current Assignment Counts**"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _compatibilityMode={false}
      columnHeaderNames={{ ordered: [{ first_last_name: "Name" }] }}
      columnWidths={[{ object: { id: "count", value: 75.125 } }]}
      customButtonName=""
      data="{{ assign_count_by_user.data }}"
      defaultSelectedRow="none"
      disableRowSelectInteraction={true}
      doubleClickToEdit={true}
      overflowType="scroll"
      rowHeight="compact"
      showBoxShadow={false}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
      useCompactMode={true}
    />
    <Text
      id="text6"
      value="##### **{{query.value}}** matches {{query_count.data.match_count}} concepts"
      verticalAlign="center"
    />
    <Select
      id="assignee_select"
      captionByIndex=""
      colorByIndex=""
      data="{{ user_options.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Assignee Select"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.uuid }}"
    />
    <Button
      id="button1"
      disabled="{{assignee_select.value == null}}"
      styleVariant="solid"
      text="Assign {{query_count.data.match_count}} concepts to {{assignee_select.selectedLabel}}"
    />
  </Frame>
</App>
