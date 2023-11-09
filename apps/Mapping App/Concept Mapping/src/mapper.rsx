<Container
  id="mapper"
  disabled=""
  heightType="fixed"
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  selectedView="View 1"
  showBody={true}
  showHeader={true}
  showInEditor={null}
  style={{ ordered: [{ headerBackground: "#ededed" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      value={
        '<div style="text-transform: uppercase; font-weight: 500;">Currently mapping concepts for the {{load_concept_map_metadata.data.title[0]}} Version {{load_concept_map_metadata.data.version}} Concept Map</div>'
      }
      verticalAlign="center"
    />
  </Header>
  <View id="" viewKey="View 1" />
  <Body>
    <Text
      id="count_text"
      value="{{load_concept_map_metadata.data.title[0]}} Version {{load_concept_map_metadata.data.version}} contains {{count_pending_concepts.data.count}} source concepts that are pending assigned to you. {{count_ready_for_review_concepts.data.count}} of your assigned concepts are awaiting review."
      verticalAlign="center"
    />
    <Multiselect
      id="assignment_que_status_filter"
      allowSearch={false}
      data="{{load_current_map_statuses.data.display}}"
      deprecatedLabels=""
      label="Filter que by status:"
      labels=""
      labelWrap={true}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value={'["pending", "rejected"]'}
      values="{{ item }}"
      wrapTags={true}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="load_source_concepts"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <TextInput
      id="mapcomments"
      label="Comments"
      labelWidth="45"
      placeholder="Enter value"
    />
    <Select
      id="relationship_selection"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_relationships.data}}"
      deprecatedLabels="{{load_relationships.data.display}}"
      label="Relationship"
      labels="{{load_relationships.data.display[i]}}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{load_relationships.data.uuid[i]}}"
    />
    <TableLegacy
      id="source_concepts"
      _columns={[
        "map_status",
        "display",
        "code",
        "uuid",
        "system",
        "comments",
        "additional_context",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "Custom Column 1",
      ]}
      _columnVisibility={{
        ordered: [
          { display: true },
          { name: true },
          { sales: false },
          { code: true },
          { system: false },
          { assigned_mapper: false },
          { comments: false },
          { map_status: true },
          { assigned_reviewer: false },
          { "Custom Column 1": true },
          { additional_context: false },
          { review_status: true },
          { id: true },
          { uuid: false },
          { concept_map_version_uuid: false },
          { email: false },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{
        ordered: [
          { review_status: "left" },
          { "Custom Column 1": "left" },
          { map_status: "left" },
        ],
      }}
      columnAllowOverflow={{ ordered: [{ display: true }] }}
      columnColors={{
        ordered: [
          { display: "" },
          { name: "" },
          { sales: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { comments: "" },
          { map_status: "" },
          { assigned_reviewer: "" },
          { "Custom Column 1": "" },
          { additional_context: "" },
          { review_status: "" },
          { id: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { email: "" },
          { no_map: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { review_status: true },
          { "Custom Column 1": false },
          { map_status: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { review_status: "dropdown" },
          { "Custom Column 1": "modal" },
          { map_status: "dropdown" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { display: "source display" },
        ],
      }}
      columnMappers={{
        ordered: [
          { review_status: "{{load_source_concepts.data.map_status.display}}" },
          { "Custom Column 1": "More Info" },
          { map_status: "" },
        ],
      }}
      columns={[
        "map_status",
        "display",
        "code",
        "uuid",
        "system",
        "comments",
        "additional_context",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "Custom Column 1",
      ]}
      columnTypeSpecificExtras={{
        ordered: [
          {
            review_status: {
              ordered: [
                {
                  dropdownValues: "{{load_current_map_statuses.data.display}}",
                },
              ],
            },
          },
          {
            map_status: {
              ordered: [
                { dropdownValues: "{{load_all_statuses.data.display}}" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { display: true },
          { name: true },
          { sales: false },
          { code: false },
          { system: false },
          { assigned_mapper: false },
          { comments: false },
          { map_status: true },
          { assigned_reviewer: false },
          { "Custom Column 1": true },
          { additional_context: false },
          { review_status: true },
          { id: true },
          { uuid: false },
          { concept_map_version_uuid: false },
          { email: false },
        ],
      }}
      columnWidths={[
        { object: { id: "id", value: 132.875 } },
        { object: { id: "comments", value: 122 } },
        { object: { id: "review_status", value: 136.5411834716797 } },
        { object: { id: "display", value: 144.5582275390625 } },
        { object: { id: "map_status", value: 114.609375 } },
        { object: { id: "code", value: 287.546875 } },
      ]}
      customButtonName="status"
      data="{{load_source_concepts.data}}"
      defaultSortByColumn="display"
      events={[
        {
          ordered: [
            { event: "cellChange" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "update_concept_status" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      pageSize={7}
      showColumnBorders={true}
    >
      <KeyValueMap
        id="source_concept_additional_information"
        data="{{source_concepts.selectedRow.data}}"
        prevRowFormats={{ ordered: [] }}
        prevRowMappers={{ ordered: [] }}
        rows={[
          "a",
          "b",
          "c",
          "uuid",
          "code",
          "display",
          "system",
          "comments",
          "additional_context",
          "review_status",
          "concept_map_version_uuid",
          "assigned_mapper",
          "assigned_reviewer",
        ]}
        rowVisibility={{
          ordered: [
            { a: true },
            { b: true },
            { display: true },
            { c: true },
            { code: true },
            { system: true },
            { assigned_mapper: true },
            { comments: true },
            { assigned_reviewer: true },
            { additional_context: true },
            { review_status: true },
            { uuid: true },
            { concept_map_version_uuid: true },
          ],
        }}
      />
    </TableLegacy>
    <Include src="./tabbedContainer1.rsx" />
    <Container
      id="current_mappings"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="select_concept_status"
          value="Currently Mapped Targets"
          verticalAlign="center"
        />
      </Header>
      <View id="0e2c0" viewKey="View 1">
        <TableLegacy
          id="mapped_targets"
          _columns={[
            "display",
            "review_status",
            "concept_map_version_uuid",
            "relationship_code_uuid",
            "relationship",
            "uuid",
            "Custom Column 1",
            "mapping_comments",
            "author",
            "target_concept_code",
            "target_concept_display",
            "created_date",
            "reviewed_date",
            "source_concept_uuid",
            "target_concept_system_version_uuid",
            "Custom Column 2",
            "rc_uuid",
            "code",
            "system",
            "comments",
            "additional_context",
            "assigned_mapper",
            "assigned_reviewer",
            "target_concept_system",
            "cr_uuid",
            "map_status",
            "no_map",
            "reason_for_no_map",
            "mapping_group",
          ]}
          _columnSummaryTypes={{ ordered: [{ target_concept_code: "" }] }}
          _columnSummaryValues={{ ordered: [{ target_concept_code: "" }] }}
          _columnVisibility={{
            ordered: [
              { special_use: false },
              { display: true },
              { relationship_system_uuid: false },
              { mapping_comments: false },
              { created_date: false },
              { relationship_code_uuid: true },
              { rc_uuid: false },
              { cr_uuid: false },
              { author: false },
              { target_concept_system_version_uuid: false },
              { code: false },
              { system: false },
              { target_concept_code: true },
              { assigned_mapper: false },
              { target_concept_system: true },
              { rc_display: true },
              { comments: true },
              { map_status: true },
              { source_concept_uuid: true },
              { reviewed_date: false },
              { assigned_reviewer: false },
              { "Custom Column 1": false },
              { additional_context: false },
              { "Custom Column 2": true },
              { relationship: true },
              { review_status: true },
              { uuid: true },
              { concept_map_version_uuid: true },
              { target_concept_display: true },
            ],
          }}
          _compatibilityMode={false}
          applyDynamicSettingsToColumnOrder={false}
          calculatedColumns={["Custom Column 1", "Custom Column 2"]}
          columnAlignment={{
            ordered: [
              { "Custom Column 1": "left" },
              { "Custom Column 2": "left" },
              { relationship: "left" },
              { target_concept_code: "left" },
            ],
          }}
          columnAllowOverflow={{
            ordered: [
              { target_concept_display: false },
              { relationship: true },
              { display: false },
            ],
          }}
          columnColors={{
            ordered: [
              { special_use: "" },
              { display: "" },
              { relationship_system_uuid: "" },
              { mapping_comments: "" },
              { created_date: "" },
              { relationship_code_uuid: "" },
              { rc_uuid: "" },
              { cr_uuid: "" },
              { author: "" },
              { target_concept_system_version_uuid: "" },
              { code: "" },
              { mapping_group: "" },
              { system: "" },
              { reason_for_no_map: "" },
              { target_concept_code: "" },
              { assigned_mapper: "" },
              { target_concept_system: "" },
              { rc_display: "" },
              { comments: "" },
              { map_status: "" },
              { source_concept_uuid: "" },
              { reviewed_date: "" },
              { assigned_reviewer: "" },
              { "Custom Column 1": "" },
              { additional_context: "" },
              { "Custom Column 2": "" },
              { relationship: "" },
              { review_status: "" },
              { uuid: "" },
              { concept_map_version_uuid: "" },
              { target_concept_display: "" },
              { no_map: "" },
            ],
          }}
          columnEditable={{
            ordered: [
              { uuid: false },
              { "Custom Column 1": false },
              { "Custom Column 2": false },
              { "Custom Column 3": false },
              { relationship: true },
              { display: false },
            ],
          }}
          columnFormats={{
            ordered: [
              { "Custom Column 1": "ModalDataCell" },
              { "Custom Column 2": "button" },
              { relationship: "SingleTagDataCell" },
              { target_concept_code: "default" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { display: "Source Display" },
              { mapping_comments: "Comments" },
              { created_date: "Mapped On" },
              { author: "Mapped By" },
              { target_concept_code: "Target Code" },
              { target_concept_system: "System" },
              { rc_display: "" },
              { "Custom Column 1": "More Info" },
              { "Custom Column 2": '" "' },
              { "Custom Column 3": "rel type" },
              { target_concept_display: "Target Display" },
            ],
          }}
          columnMappers={{
            ordered: [
              { "Custom Column 1": "More Info" },
              { "Custom Column 2": "Un-Map" },
              { "Custom Column 3": "{{load_relationship_code.data.display}}" },
              { relationship: "" },
            ],
          }}
          columns={[
            "display",
            "uuid",
            "review_status",
            "concept_map_version_uuid",
            "relationship_code_uuid",
            "relationship",
            "target_concept_display",
            "Custom Column 1",
            "mapping_comments",
            "author",
            "target_concept_code",
            "created_date",
            "reviewed_date",
            "source_concept_uuid",
            "target_concept_system_version_uuid",
            "Custom Column 2",
            "rc_uuid",
            "code",
            "system",
            "comments",
            "additional_context",
            "assigned_mapper",
            "assigned_reviewer",
            "target_concept_system",
            "cr_uuid",
            "map_status",
          ]}
          columnTypeProperties={{
            ordered: [
              { "Custom Column 1": { ordered: [] } },
              {
                relationship: {
                  ordered: [
                    {
                      optionData:
                        "{\n  value: {{load_relationships.data.uuid}},\n  label: {{load_relationships.data.display}}\n}",
                    },
                    { colorMode: "none" },
                    { allowCustomValue: false },
                    { optionLabels: "{{ item.label }}" },
                    { optionColors: { array: [] } },
                    { optionValues: "{{ item.value }}" },
                  ],
                },
              },
              { target_concept_code: { ordered: [] } },
            ],
          }}
          columnTypeSpecificExtras={{
            ordered: [
              {
                "Custom Column 2": {
                  ordered: [
                    { buttonType: "action" },
                    { action: "delete_mapping" },
                  ],
                },
              },
              {
                relationship: {
                  ordered: [
                    { dropdownValues: "{{load_relationships.data.uuid}}" },
                    { dropdownLabels: "{{load_relationships.data.display}}" },
                  ],
                },
              },
            ],
          }}
          columnVisibility={{
            ordered: [
              { special_use: false },
              { display: true },
              { relationship_system_uuid: false },
              { mapping_comments: false },
              { created_date: false },
              { relationship_code_uuid: false },
              { rc_uuid: false },
              { cr_uuid: false },
              { author: false },
              { target_concept_system_version_uuid: false },
              { code: false },
              { system: false },
              { target_concept_code: true },
              { assigned_mapper: false },
              { target_concept_system: true },
              { rc_display: true },
              { comments: true },
              { map_status: true },
              { source_concept_uuid: false },
              { reviewed_date: false },
              { assigned_reviewer: false },
              { "Custom Column 1": false },
              { additional_context: false },
              { "Custom Column 2": true },
              { relationship: true },
              { review_status: false },
              { uuid: false },
              { concept_map_version_uuid: false },
              { target_concept_display: true },
            ],
          }}
          columnWidths={[
            { object: { id: "relationship_code_uuid", value: 150 } },
            { object: { id: "assigned_mapper", value: 157 } },
            { object: { id: "Custom Column 2", value: 101 } },
            { object: { id: "relationship", value: 118 } },
            { object: { id: "target_concept_system", value: 136.3125 } },
            { object: { id: "display", value: 136.984375 } },
            { object: { id: "target_concept_display", value: 373.921875 } },
            { object: { id: "reason_for_no_map", value: 143 } },
            { object: { id: "uuid", value: 213 } },
            { object: { id: "target_concept_code", value: 294 } },
            { object: { id: "source_concept_uuid", value: 199 } },
          ]}
          customButtonName=""
          data="{{load_mapped_targets.data}}"
          defaultSortByColumn="target_concept_display"
          events={[
            {
              ordered: [
                { event: "saveChanges" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "update_relationship_code" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          pageSize={3}
        />
      </View>
    </Container>
  </Body>
</Container>
