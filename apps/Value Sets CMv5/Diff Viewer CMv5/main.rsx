<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <TextInput
      id="left_vs_name"
      label="Value Set Name"
      placeholder="Enter value"
      value="Breast Cancer"
    />
    <TextInput
      id="right_vs_name"
      label="Value Set Name"
      placeholder="Enter value"
      value="Breast Cancer"
    />
    <Select
      id="left_version_select"
      allowDeselect={true}
      allowSearch={true}
      captionByIndex=""
      colorByIndex=""
      data=""
      deprecatedLabels="{{left_vs_versions.data.version}}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Version"
      labels=""
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{self.values[1]}}"
      values=""
    >
      <Option id="f27bb" disabled={false} hidden={false} value="1" />
    </Select>
    <Select
      id="right_version_select"
      allowDeselect={true}
      allowSearch={true}
      captionByIndex=""
      colorByIndex=""
      data=""
      deprecatedLabels="{{right_vs_versions.data.version}}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Version"
      labels=""
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ self.values[0] }}"
      values=""
    >
      <Option
        id="6d28f"
        disabled={false}
        hidden={false}
        value="2
"
      />
    </Select>
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
      _columns={["code", "display", "Custom Column 1"]}
      _columnVisibility={{
        ordered: [
          { expansion_uuid: false },
          { code: true },
          { display: true },
          { system: true },
          { version: true },
          { resource: true },
          { "Custom Column 1": false },
        ],
      }}
      _compatibilityMode={false}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1"]}
      columnColors={{
        ordered: [
          { code: "" },
          { display: "" },
          { "reason for removal": "" },
          { "Custom Column 1": "" },
          { expansion_uuid: "" },
          { system: "" },
          { version: "" },
          { resource: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnHeaderNames={{
        ordered: [{ "Custom Column 1": "reason for removal\n" }],
      }}
      columnMappers={{
        ordered: [{ "Custom Column 1": "Removed from terminology" }],
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
        { object: { id: "code", value: 80.84375 } },
        { object: { id: "display", value: 218.578125 } },
      ]}
      customButtonName=""
      data={
        '{"code":["C50.122", "C50.929"],"display":["Malignant neoplasm of central portion of left male breast", "Malignant neoplasm of unspecified site of unspecified male breast"], "reason for removal":["Removed from terminology", "Rule no longer applies"] }'
      }
      pageSize={14}
      showColumnBorders={true}
    />
    <TableLegacy
      id="table2"
      _columns={["code", "display", "Custom Column 1"]}
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
      calculatedColumns={["Custom Column 1"]}
      columnColors={{
        ordered: [
          { code: "" },
          { display: "" },
          { expansion_uuid: "" },
          { system: "" },
          { version: "" },
          { resource: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnHeaderNames={{
        ordered: [{ "Custom Column 1": "reason for inclusion" }],
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
      data={
        '{"code":["C50.8"],"display":["Malignant neoplasm of overlapping sites of breast"]}'
      }
      pageSize={14}
      showColumnBorders={true}
    />
  </Frame>
</App>
