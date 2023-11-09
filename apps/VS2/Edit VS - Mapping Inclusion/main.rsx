<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text7"
      value="**Mapping inclusions** add additional codes to the value set by connecting one or more map sets. Any codes already in the value set which match a source code in the map set will result in the target value being included in the value set as well."
      verticalAlign="center"
    />
    <Text
      id="text9"
      value="##### Add New Mapping Inclusion"
      verticalAlign="center"
    />
    <Select
      id="concept_map_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{get_concept_map_list.data.mapsetName}}"
      label="Concept Map"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Multiselect
      id="relationship_type_select"
      allowSearch={true}
      data="{{get_relationship_types_for_concept_map.data.relationshipCode}}"
      label="Allowed Relationship Types"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      placeholder="Select multiple options"
      showSelectionIndicator={true}
      values="{{ item }}"
      wrapTags={true}
    />
    <Select
      id="match_source_or_target"
      allowDeselect={true}
      allowSearch={true}
      data="['source', 'target']"
      label="Match Source or Target"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Button
      id="button6"
      disabled="{{ ['active', 'obsolete', 'retired'].includes(value_set_version_metadata.data.status[0])}}"
      styleVariant="solid"
      text="Save Mapping Inclusion"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_mapping_inclusion"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text10"
      value="##### Current Mapping Inclusions"
      verticalAlign="center"
    />
    <TableLegacy
      id="mapping_inclusions"
      _columns={[
        "concept_map_name",
        "uuid",
        "concept_map_uuid",
        "relationship_types",
        "match_source_or_target",
        "vs_version_uuid",
      ]}
      _columnVisibility={{
        ordered: [
          { uuid: false },
          { concept_map_uuid: false },
          { relationship_types: true },
          { match_source_or_target: true },
          { concept_map_name: true },
          { vs_version_uuid: false },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "delete_mapping_inclusion" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { uuid: "" },
          { concept_map_uuid: "" },
          { relationship_types: "" },
          { match_source_or_target: "" },
          { concept_map_name: "" },
          { vs_version_uuid: "" },
        ],
      }}
      columns={[
        "concept_map_name",
        "uuid",
        "concept_map_uuid",
        "relationship_types",
        "match_source_or_target",
        "vs_version_uuid",
      ]}
      columnVisibility={{
        ordered: [
          { uuid: false },
          { concept_map_uuid: false },
          { relationship_types: true },
          { match_source_or_target: true },
          { concept_map_name: true },
          { vs_version_uuid: false },
        ],
      }}
      columnWidths={[
        { object: { id: "concept_map_name", value: 209.75 } },
        { object: { id: "relationship_types", value: 556.25 } },
        { object: { id: "match_source_or_target", value: 520.25 } },
      ]}
      customButtonName=""
      data="{{ load_mapping_inclusions.data }}"
      pageSize={8}
      showColumnBorders={true}
    />
  </Frame>
</App>
