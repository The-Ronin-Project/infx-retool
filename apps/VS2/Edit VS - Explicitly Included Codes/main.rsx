<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
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
                "{{ value_set_version_metadata.data.status == 'active'}}",
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
        ordered: [
          { value: "{{value_set_version_metadata.data.status[0]=='active'}}" },
        ],
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
    <Include src="./src/modal1.rsx" />
    <Text
      id="text1"
      style={{ ordered: [] }}
      value="UUID of Value Set Version: {{urlparams.uuid}}"
      verticalAlign="center"
    />
  </Frame>
</App>
