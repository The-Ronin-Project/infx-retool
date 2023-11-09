<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TableLegacy
      id="table1"
      _columns={[
        "idAndFsnTerm",
        "conceptId",
        "fsn",
        "active",
        "definitionStatus",
        "moduleId",
        "effectiveTime",
        "pt",
        "id",
      ]}
      _columnVisibility={{
        ordered: [
          { fsn: false },
          { conceptId: false },
          { pt: false },
          { definitionStatus: false },
          { active: false },
          { moduleId: false },
          { idAndFsnTerm: true },
          { effectiveTime: false },
          { id: false },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { fsn: "" },
          { conceptId: "" },
          { pt: "" },
          { definitionStatus: "" },
          { active: "" },
          { moduleId: "" },
          { idAndFsnTerm: "" },
          { effectiveTime: "" },
          { id: "" },
        ],
      }}
      columns={[
        "idAndFsnTerm",
        "conceptId",
        "fsn",
        "active",
        "definitionStatus",
        "moduleId",
        "effectiveTime",
        "pt",
        "id",
      ]}
      columnVisibility={{
        ordered: [
          { fsn: false },
          { conceptId: false },
          { pt: false },
          { definitionStatus: false },
          { active: false },
          { moduleId: false },
          { idAndFsnTerm: true },
          { effectiveTime: false },
          { id: false },
        ],
      }}
      columnWidths={[
        { object: { id: "conceptId", value: 169.484375 } },
        { object: { id: "idAndFsnTerm", value: 741.984375 } },
      ]}
      customButtonName=""
      data="{{ query1.data.items }}"
      overflowType="scroll"
      pageSize={5}
      serverPaginationType="forwardCursorBased"
      showColumnBorders={true}
    />
    <TextInput
      id="ecl_query_string"
      label="Please Enter an ECL query"
      placeholder="Enter value"
    />
  </Frame>
</App>
