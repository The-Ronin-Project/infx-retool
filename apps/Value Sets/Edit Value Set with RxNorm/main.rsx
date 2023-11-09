<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Text
      id="text3"
      value="Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title}}**"
      verticalAlign="center"
    />
    <TabbedContainerWidget
      id="tabbedcontainer1"
      tabNames={'["Rules","Mapping Inclusions","Expansion","Review"]'}
    >
      <Alert
        id="alert1"
        description="Only Andrew West can promote or retire value sets used for the ED risk model"
        hidden="{{ !(version_metadata.data.purpose[0].toLowerCase().includes('ed risk') && current_user.email != 'awest@projectronin.com') }}"
        title=""
        type="warning"
      />
      <Button
        id="button2"
        disabled=""
        hidden={null}
        loading=""
        maintainSpaceWhenHidden={null}
        showInEditor={null}
        text="Load Expansion"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="load_expansion"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="load_expansion_metadata"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Text
        id="text7"
        value="**Mapping inclusions** add additional codes to the value set by connecting one or more map sets. Any codes already in the value set which match a source code in the map set will result in the target value being included in the value set as well."
        verticalAlign="center"
      />
      <Button
        id="button4"
        styleVariant="solid"
        text="Download Expansion Report"
      >
        <Event
          event="click"
          method="openUrl"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ newTab: true }, { forceReload: false }],
                },
              },
              {
                url: "https://hashi.prod.projectronin.io/ValueSets/expansions/{{load_expansion_metadata.data.uuid}}/report",
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="button5"
        styleVariant="solid"
        text="View Diff From Previous Version"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "2852e280-638a-11ec-8b00-e7805aea3133" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "vs_name" },
                            { value: "{{version_metadata.data.name}}" },
                          ],
                        },
                        { ordered: [{ key: "" }, { value: "" }] },
                      ],
                    },
                    { newTab: true },
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
      <Button
        id="button3"
        disabled="{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}"
        hidden={null}
        loading=""
        maintainSpaceWhenHidden={null}
        showInEditor={null}
        style={{ ordered: [{ background: "#6a6a6a" }] }}
        text="Generate New Expansion"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="generate_expansion"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Include src="./src/modal1.rsx" />
      <Text
        id="text9"
        value="##### Add New Mapping Inclusion"
        verticalAlign="center"
      />
      <TableLegacy
        id="rules_table"
        _columns={[
          "rule_group",
          "uuid",
          "position",
          "description",
          "property",
          "operator",
          "value",
          "include",
          "value_set_version",
          "terminology_version",
          "terminology",
          "version",
        ]}
        _columnVisibility={{
          ordered: [
            { effective_end: false },
            { operator: true },
            { include: true },
            { position: false },
            { effective_start: false },
            { name: true },
            { sales: true },
            { terminology_version: false },
            { value_set_version: false },
            { value: true },
            { terminology: true },
            { property: true },
            { version: true },
            { id: true },
            { uuid: false },
            { rule_group: true },
            { email: true },
            { description: true },
            { vs_uuid: false },
            { group: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Delete" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "delete_rule" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              {
                actionButtonDisabled:
                  "{{ version_metadata.data.status == 'active'}}",
              },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { effective_end: "" },
            { operator: "" },
            { include: "" },
            { position: "" },
            { effective_start: "" },
            { terminology_version: "" },
            { value_set_version: "" },
            { value: "" },
            { terminology: "" },
            { property: "" },
            { version: "" },
            { uuid: "" },
            { rule_group: "" },
            { description: "" },
            { vs_uuid: "" },
            { group: "" },
          ],
        }}
        columnEditable={{ ordered: [{ value: true }, { rule_group: true }] }}
        columnHeaderNames={{
          ordered: [
            { version: "Term. Version" },
            { terminology: "Terminology" },
            { rule_group: "group" },
          ],
        }}
        columnRestrictedEditing={{
          ordered: [{ value: "{{version_metadata.data.status[0]=='active'}}" }],
        }}
        columns={[
          "rule_group",
          "uuid",
          "position",
          "description",
          "property",
          "operator",
          "value",
          "include",
          "value_set_version",
          "terminology_version",
          "terminology",
          "version",
        ]}
        columnVisibility={{
          ordered: [
            { effective_end: false },
            { operator: true },
            { include: true },
            { position: false },
            { effective_start: false },
            { name: true },
            { sales: true },
            { terminology_version: false },
            { value_set_version: false },
            { value: true },
            { terminology: true },
            { property: true },
            { version: true },
            { id: true },
            { uuid: false },
            { rule_group: true },
            { email: true },
            { description: true },
            { vs_uuid: false },
            { group: true },
          ],
        }}
        columnWidths={[
          { object: { id: "position", value: 66.5 } },
          { object: { id: "description", value: 248.640625 } },
          { object: { id: "operator", value: 109.63351440429688 } },
          { object: { id: "value", value: 213.47442626953125 } },
        ]}
        customButtonName=""
        data="{{load_rules.data}}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "bulk_update_values" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={12}
        showColumnBorders={true}
      />
      <Select
        id="status_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{load_statuses.data.display}}"
        disabled=""
        label="Status"
        labels="{{ _.startCase(item) }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{version_metadata.data.status[0]}}"
        values="{{ item }}"
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_status"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <Text
        id="text2"
        style={{ ordered: [] }}
        value="Latest expansion generated at {{load_expansion_metadata.data.timestamp}}"
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
      <TableLegacy
        id="table1"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "expansion_uuid",
          "code",
          "display",
          "version",
          "system",
        ]}
        _columnVisibility={{
          ordered: [
            { display: true },
            { name: true },
            { sales: true },
            { code: true },
            { system: true },
            { version: true },
            { id: true },
            { expansion_uuid: false },
            { email: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
        columnAllowOverflow={{ ordered: [{ display: true }] }}
        columnColors={{
          ordered: [
            { expansion_uuid: "" },
            { code: "" },
            { display: "" },
            { system: "" },
            { version: "" },
          ],
        }}
        columnFormats={{ ordered: [{ "Custom Column 1": "button" }] }}
        columnHeaderNames={{ ordered: [{ "Custom Column 1": "Action" }] }}
        columnMappers={{ ordered: [{ "Custom Column 1": "Delete" }] }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "expansion_uuid",
          "code",
          "display",
          "version",
          "system",
        ]}
        columnTypeSpecificExtras={{
          ordered: [
            { "Custom Column 1": { ordered: [{ buttonType: "action" }] } },
          ],
        }}
        columnVisibility={{
          ordered: [
            { display: true },
            { name: true },
            { sales: true },
            { code: true },
            { system: true },
            { version: true },
            { id: true },
            { expansion_uuid: false },
            { email: true },
          ],
        }}
        columnWidths={[
          { object: { id: "code", value: 99.25 } },
          { object: { id: "system", value: 321.578125 } },
          { object: { id: "display", value: 1017.59375 } },
        ]}
        customButtonName=""
        data="{{ load_expansion.data }}"
        overflowType="scroll"
        pageSize={16}
        showColumnBorders={true}
      />
      <Text
        id="text4"
        value="{{version_metadata.data.comments[0]}}"
        verticalAlign="center"
      />
      <Button
        id="button6"
        disabled="{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}"
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
      <Text
        id="text8"
        value="Add view which explicitly shows new codes and codes that will be removed"
        verticalAlign="center"
      />
      <Text
        id="text1"
        style={{ ordered: [] }}
        value="UUID of Value Set Version: {{urlparams.uuid}}"
        verticalAlign="center"
      />
    </TabbedContainerWidget>
  </Frame>
</App>
