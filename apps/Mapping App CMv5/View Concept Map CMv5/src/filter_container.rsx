<Container
  id="filter_container"
  hidden="{{!show_filters.value}}"
  hoistFetching={true}
  showBody={true}
  style={{
    ordered: [
      { borderRadius: "4px" },
      { border: "canvas" },
      { background: "canvas" },
    ],
  }}
>
  <Header>
    <Text
      id="containerTitle1"
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="fef3f" viewKey="View 1">
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      value="**Content Filters**"
      verticalAlign="center"
    />
    <Text
      id="text19"
      _disclosedFields={{ array: [] }}
      value="**Process Filters**"
      verticalAlign="center"
    />
    <Select
      id="listbox1"
      emptyMessage="No options"
      hidden="true"
      hideLabel={false}
      itemMode="static"
      label="Source Code Simple"
      labelWidth="60"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
    >
      <Option id="d39ed" value="=" />
      <Option id="2e35a" value="contains" />
    </Select>
    <TextInput
      id="source_code_simple_filter_input"
      _disclosedFields={{ array: [] }}
      hidden="true"
      hideLabel={true}
      labelPosition="top"
      placeholder="Source code filter value"
    />
    <Text
      id="text20"
      _disclosedFields={{ array: [] }}
      value="Include assignment and status data"
      verticalAlign="center"
    />
    <Multiselect
      id="map_status_select"
      data="{{ map_status_options.data }}"
      emptyMessage="No options"
      label="Map Status"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.map_status }}"
      wrapTags={true}
    />
    <Select
      id="listbox5"
      emptyMessage="No options"
      hideLabel={false}
      itemMode="static"
      label="Source Code jsonb"
      labelWidth="60"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
    >
      <Option id="d39ed" value="=" />
      <Option id="2e35a" value="contains" />
    </Select>
    <TextInput
      id="source_code_jsonb_filter_input"
      _disclosedFields={{ array: [] }}
      hideLabel={true}
      labelPosition="top"
      placeholder="Source code filter value"
    />
    <Multiselect
      id="review_status_select"
      data="{{ review_status_options.data }}"
      emptyMessage="No options"
      label="Review Status"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.review_status }}"
      wrapTags={true}
    />
    <Select
      id="listbox3"
      emptyMessage="No options"
      hideLabel={false}
      itemMode="static"
      label="Source Display"
      labelWidth="60
"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
    >
      <Option id="d39ed" value="=" />
      <Option id="2e35a" value="contains" />
    </Select>
    <TextInput
      id="source_display_filter_input"
      _disclosedFields={{ array: [] }}
      hideLabel={true}
      labelPosition="top"
      placeholder="Source display filter value"
    />
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <Multiselect
      id="mapper_select"
      data="{{ mapper_options.data }}"
      emptyMessage="No options"
      label="Mapper"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
      wrapTags={true}
    />
    <Multiselect
      id="relationship_filter_select"
      data="{{ relationship_options.data }}"
      emptyMessage="No options"
      label="Relationship"
      labels="{{item.display}}"
      labelWidth="29"
      overlayMaxHeight={375}
      placeholder="Select a relationship"
      showSelectionIndicator={true}
      values="{{ item.relationship_code_uuid }}"
      wrapTags={true}
    />
    <Multiselect
      id="reviewer_select"
      data="{{ reviewer_options.data }}"
      emptyMessage="No options"
      label="Reviewer"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
      wrapTags={true}
    />
    <Select
      id="listbox2"
      emptyMessage="No options"
      hideLabel={false}
      itemMode="static"
      label="Target code"
      labelWidth="60"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
    >
      <Option id="d39ed" value="=" />
      <Option id="2e35a" value="contains" />
    </Select>
    <TextInput
      id="target_code_input"
      _disclosedFields={{ array: [] }}
      hideLabel={true}
      labelPosition="top"
      placeholder="Target code filter value"
    />
    <Divider id="divider3" _disclosedFields={{ array: [] }} />
    <Multiselect
      id="mapping_group_select"
      data="{{ mapping_group_options.data }}"
      emptyMessage="No options"
      label="Mapping Group"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.mapping_group }}"
      wrapTags={true}
    />
    <Select
      id="listbox4"
      emptyMessage="No options"
      hideLabel={false}
      itemMode="static"
      label="Target Display"
      labelWidth="60"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
    >
      <Option id="d39ed" value="=" />
      <Option id="2e35a" value="contains" />
    </Select>
    <TextInput
      id="display_code_input"
      _disclosedFields={{ array: [] }}
      hideLabel={true}
      labelPosition="top"
      placeholder="Target display filter value"
    />
    <Divider id="divider2" _disclosedFields={{ array: [] }} />
    <TextInput
      id="mapping_comments_input"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Mapping Comments Contains"
      placeholder="Enter value"
    />
    <Switch
      id="show_only_unmapped"
      _disclosedFields={{ array: [] }}
      label="Show Only Not Yet Mapped"
    />
    <TextInput
      id="review_comment_input"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Review Comments Contains"
      placeholder="Enter value"
    />
    <Switch
      id="show_only_mapped"
      _disclosedFields={{ array: [] }}
      label="Show Only Mapped"
    />
    <TextInput
      id="source_comments_input"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Source Comments Contains"
      placeholder="Enter value"
    />
    <Multiselect
      id="no_map_reason_select"
      captionByIndex=""
      colorByIndex=""
      data="{{ reason_for_no_map_options.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="No Map Reason"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.reason_for_no_map }}"
      wrapTags={true}
    >
      <Option id="d7f2d" disabled={false} hidden={false} value="Option 1" />
    </Multiselect>
    <Divider id="divider4" _disclosedFields={{ array: [] }} />
  </View>
</Container>
