<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      value="Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title[0].trim()}}**"
      verticalAlign="center"
    />
    <TabbedContainerWidget
      id="tabbedcontainer1"
      style={{
        ordered: [
          { "primary-surface": "rgb(240, 244, 248)" },
          { "primary-text": "rgb(16, 42, 67)" },
          { "primary-foreground": "rgb(72, 101, 129)" },
          { "primary-background": "rgb(188, 204, 220)" },
        ],
      }}
      tabNames={
        '["Rules","Mapping Inclusions","Explicitly Included Codes","Expansion","Review"]'
      }
    >
      <ButtonWidget
        id="button2"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "load_expansion_uuid" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "load_expansion_metadata" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        value="Load Expansion"
      />
      <Text
        id="text12"
        _disclosedFields={{ array: [] }}
        value="Explicitly included codes are codes from propriety (non-standard) terminologies which need to be included in a value set, but cannot be included via a mapping inclusion.

**This functionality should be treated as a last resort and only used when Rules and Mapping Inclusions cannot.**"
        verticalAlign="center"
      />
      <Text
        id="text7"
        _disclosedFields={{ array: [] }}
        value="**Mapping inclusions** add additional codes to the value set by connecting one or more map sets. Any codes already in the value set which match a source code in the map set will result in the target value being included in the value set as well."
        verticalAlign="center"
      />
      <Button
        id="button4"
        _disclosedFields={{ array: [] }}
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
        _disclosedFields={{ array: [] }}
        styleVariant="solid"
        text="View Diff From Previous Version"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "a02baa80-6f4b-11ed-abb1-87a066ddb8d5" },
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
      <ButtonWidget
        id="button3"
        disabled="{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "generate_expansion" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        style={{ ordered: [{ "accent-background": "#6a6a6a" }] }}
        value="Generate New Expansion"
      />
      <Include src="./src/modal1.rsx" />
      <Text
        id="text14"
        _disclosedFields={{ array: [] }}
        value="#### Update Status"
        verticalAlign="center"
      />
      <TableLegacy
        id="table2"
        _columns={[
          "code",
          "display",
          "uuid",
          "terminology_version",
          "vs_version_uuid",
          "code_uuid",
          "terminology",
          "version",
          "review_status",
        ]}
        _columnVisibility={{
          ordered: [
            { display: true },
            { operator: true },
            { vs_version_uuid: false },
            { include: true },
            { position: true },
            { terminology_version: false },
            { value_set_version: true },
            { code: true },
            { code_uuid: false },
            { value: true },
            { terminology: true },
            { property: true },
            { version: true },
            { review_status: true },
            { uuid: false },
            { rule_group: true },
            { description: true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { display: "" },
            { operator: "" },
            { vs_version_uuid: "" },
            { include: "" },
            { position: "" },
            { terminology_version: "" },
            { value_set_version: "" },
            { code: "" },
            { code_uuid: "" },
            { value: "" },
            { terminology: "" },
            { property: "" },
            { version: "" },
            { review_status: "" },
            { uuid: "" },
            { rule_group: "" },
            { description: "" },
          ],
        }}
        columns={[
          "code",
          "display",
          "uuid",
          "terminology_version",
          "vs_version_uuid",
          "code_uuid",
          "terminology",
          "version",
          "review_status",
        ]}
        columnVisibility={{
          ordered: [
            { display: true },
            { operator: true },
            { vs_version_uuid: false },
            { include: true },
            { position: true },
            { terminology_version: false },
            { value_set_version: true },
            { code: true },
            { code_uuid: false },
            { value: true },
            { terminology: true },
            { property: true },
            { version: true },
            { review_status: true },
            { uuid: false },
            { rule_group: true },
            { description: true },
          ],
        }}
        columnWidths={[{ object: { id: "code", value: 359.203125 } }]}
        customButtonName=""
        data="{{ load_explicit_inclusions.data }}"
        pageSize={5}
      />
      <Text
        id="text9"
        _disclosedFields={{ array: [] }}
        value="##### Add New Mapping Inclusion"
        verticalAlign="center"
      />
      <Text
        id="text2"
        _disclosedFields={{ array: [] }}
        style={{ ordered: [] }}
        value="Latest expansion generated at {{load_expansion_metadata.data.timestamp}}"
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
        columnAllowOverflow={{ ordered: [{ value: true }] }}
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
        columnEditable={{
          ordered: [
            { value: true },
            { rule_group: true },
            { terminology_version: false },
            { version: false },
          ],
        }}
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
          { object: { id: "operator", value: 109.63351440429688 } },
          { object: { id: "value", value: 213.47442626953125 } },
          { object: { id: "description", value: 115.640625 } },
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
        overflowType="scroll"
        pageSize={20}
        showColumnBorders={true}
      />
      <Text
        id="text15"
        _disclosedFields={{ array: [] }}
        value="The drop-down below allows the status of Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title[0].trim()}}** to be updated to one of the availbale options. To set to 'active' please use the Publish button below."
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
            { custom_terminology_uuid: false },
            { version: true },
            { id: true },
            { expansion_uuid: false },
            { uuid: false },
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
          { object: { id: "system", value: 321.578125 } },
          { object: { id: "code", value: 251.25 } },
          { object: { id: "display", value: 706.59375 } },
        ]}
        customButtonName=""
        data="{{ load_expansion.data }}"
        overflowType="scroll"
        pageSize={16}
        showColumnBorders={true}
      />
      <Button
        id="button6"
        _disclosedFields={{ array: [] }}
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
        id="text22"
        _disclosedFields={{ array: [] }}
        value="Note: Current status for this version of the value set is **{{version_metadata.data.status}}**."
        verticalAlign="center"
      />
      <Text
        id="text10"
        _disclosedFields={{ array: [] }}
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
              {
                actionButtonDisabled:
                  "{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}",
              },
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
      <Select
        id="status_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{load_statuses.data.display}}"
        disabled=""
        hideLabel={false}
        itemMode="static"
        label="Update Status to"
        labels="{{ _.startCase(item) }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{version_metadata.data.status[0]}}"
        values="{{ item }}"
      >
        <Option id="400fc" disabled={false} hidden={false} value="reviewed" />
        <Option
          id="9d103"
          disabled={false}
          hidden={false}
          value="in progress"
        />
        <Option id="91fe5" disabled={false} hidden={false} value="retired" />
        <Option id="984c2" disabled={false} hidden={false} value="obsolete" />
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
      <Divider id="divider1" _disclosedFields={{ array: [] }} />
      <Text
        id="text18"
        _disclosedFields={{ array: [] }}
        value="#### Publish Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title[0].trim()}}**"
        verticalAlign="center"
      />
      <Text
        id="text19"
        _disclosedFields={{ array: [] }}
        value="The button below will set the status of Version **{{version_metadata.data.version}}**of **{{version_metadata.data.title[0].trim()}}** to 'active' and publish it to OCI. This action can not be undone."
        verticalAlign="center"
      />
      <Button
        id="button8"
        _disclosedFields={{ array: [] }}
        styleVariant="solid"
        text="Publish"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="publish_and_set_active"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Text
        id="text13"
        _disclosedFields={{ array: [] }}
        value="**Add Explicit Code Inclusion**"
        verticalAlign="center"
      />
      <Text
        id="text23"
        _disclosedFields={{ array: [] }}
        hidden={'{{version_metadata.data.status != "active"}}'}
        value="✅ Version status 'active'"
        verticalAlign="center"
      />
      <TextInput
        id="code_uuid"
        _disclosedFields={{ array: [] }}
        label="Code UUID (from custom_terminologies)"
        placeholder="Enter value"
      />
      <Text
        id="text24"
        _disclosedFields={{ array: [] }}
        hidden="{{version_metadata.data.status == 'active'}}"
        value="❌ Version status not 'active'"
        verticalAlign="center"
      />
      <Button
        id="button7"
        _disclosedFields={{ array: [] }}
        styleVariant="solid"
        text="Add Explicit Inclusion"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="add_explicit_inclusion"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Text
        id="text20"
        _disclosedFields={{ array: [] }}
        hidden="{{!oci_status_check.metadata}}"
        value="✅ Published to OCI"
        verticalAlign="center"
      />
      <Text
        id="text21"
        _disclosedFields={{ array: [] }}
        hidden="{{oci_status_check.metadata}}"
        value="❌ Could not verify publication to OCI"
        verticalAlign="center"
      />
      <Text
        id="text11"
        _disclosedFields={{ array: [] }}
        value="expansion uuid: {{load_expansion_uuid.data.uuid}}"
        verticalAlign="center"
      />
      <Text
        id="text1"
        _disclosedFields={{ array: [] }}
        style={{ ordered: [] }}
        value="UUID of Value Set Version: {{urlparams.uuid}}"
        verticalAlign="center"
      />
    </TabbedContainerWidget>
  </Frame>
</App>
