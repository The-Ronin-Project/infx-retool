<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TextInput
      id="left_vs_name"
      label="Value Set Name"
      placeholder="Enter value"
      value="{{urlparams.vs_name}}"
    />
    <TextInput
      id="right_vs_name"
      label="Value Set Name"
      placeholder="Enter value"
      value="{{urlparams.vs_name}}"
    />
    <Select
      id="left_version_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{left_vs_versions.data.vsv_uuid}}"
      deprecatedLabels="{{left_vs_versions.data.version}}"
      label="Version"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{self.values[1]}}"
      values="{{ item }}"
    />
    <Select
      id="right_version_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{right_vs_versions.data.vsv_uuid}}"
      deprecatedLabels="{{right_vs_versions.data.version}}"
      label="Version"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
      values="{{ item }}"
    />
    <Select
      id="left_exp_sel"
      allowDeselect={true}
      allowSearch={true}
      data="{{left_expansions.data.uuid}}"
      deprecatedLabels="{{left_expansions.data.time_str}}"
      label="Expansion"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{self.values[0]}}"
      values="{{ item }}"
    />
    <Select
      id="right_exp_sel"
      allowDeselect={true}
      allowSearch={true}
      data="{{right_expansions.data.uuid}}"
      deprecatedLabels="{{right_expansions.data.time_str}}"
      label="Expansion"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
      values="{{ item }}"
    />
    <Text
      id="text2"
      value="##### Removed since version {{left_version_select.labels[left_version_select.values.indexOf(left_version_select.value)]}}"
      verticalAlign="center"
    />
    <Text
      id="text1"
      value="##### New in version {{right_version_select.labels[right_version_select.values.indexOf(right_version_select.value)]}}"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _columns={["code_schema", "code_simple", "code_jsonb", "display"]}
      _columnVisibility={{
        ordered: [
          { expansion_uuid: false },
          { code: true },
          { display: true },
          { system: true },
          { version: true },
          { resource: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { display: "" },
          { code_simple: "" },
          { code_jsonb: "" },
          { code: "" },
          { resource: "" },
          { system: "" },
          { code_schema: "" },
          { version: "" },
          { expansion_uuid: "" },
        ],
      }}
      columns={["expansion_uuid", "version", "code", "display", "system"]}
      columnVisibility={{
        ordered: [
          { expansion_uuid: false },
          { code: true },
          { display: true },
          { system: true },
          { version: true },
          { resource: true },
        ],
      }}
      columnWidths={[
        { object: { id: "system", value: 171.5 } },
        { object: { id: "version", value: 72.328125 } },
        { object: { id: "code", value: 181.84375 } },
      ]}
      customButtonName=""
      data="{{left_diffs.data}}"
      pageSize={14}
      showColumnBorders={true}
    />
    <TableLegacy
      id="table2"
      _columns={["code_schema", "code_simple", "code_jsonb", "display"]}
      _columnVisibility={{
        ordered: [
          { expansion_uuid: false },
          { code: true },
          { display: true },
          { system: false },
          { version: false },
          { resource: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { display: "" },
          { code_simple: "" },
          { code_jsonb: "" },
          { code: "" },
          { resource: "" },
          { system: "" },
          { code_schema: "" },
          { version: "" },
          { expansion_uuid: "" },
        ],
      }}
      columns={[
        "resource",
        "expansion_uuid",
        "code",
        "display",
        "system",
        "version",
      ]}
      columnVisibility={{
        ordered: [
          { expansion_uuid: false },
          { code: true },
          { display: true },
          { system: false },
          { version: false },
          { resource: true },
        ],
      }}
      columnWidths={[{ object: { id: "code", value: 138.75 } }]}
      customButtonName=""
      data="{{right_diffs.data}}"
      pageSize={14}
      showColumnBorders={true}
    />
  </Frame>
</App>
