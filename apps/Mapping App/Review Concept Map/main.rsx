<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="reviewerNameSelection2"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_assigned_reviewer.data}}"
      disabled=""
      hidden={null}
      label="Assigned Reviewer Queue"
      labelAlign="right"
      labels="{{item.first_last_name}}"
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      overlayMaxHeight={250}
      placeholder="Select a value"
      showClear={true}
      showInEditor={null}
      value=""
      values="{{item.uuid}}"
    />
    <TableLegacy
      id="concept_map_review"
      _columns={[
        "concept_map_version_uuid",
        "sc_uuid",
        "source_concept_uuid",
        "sc_code",
        "sc_display",
        "sc_system",
        "relationship_code_uuid",
        "rel_uuid",
        "rel_code",
        "rel_display",
        "target_concept_code",
        "target_concept_display",
        "Custom Column 2",
        "target_concept_system",
        "mapping_comments",
        "uuid",
        "review_status",
        "created_date",
        "reviewed_date",
        "author",
        "target_concept_system_version_uuid",
        "Custom Column 1",
        "assigned_reviewer",
        "asr_uuid",
        "asr_name",
      ]}
      _columnVisibility={{
        ordered: [
          { special_use: true },
          { rel_uuid: false },
          { display: true },
          { mapping_comments: false },
          { created_date: true },
          { relationship_code_uuid: false },
          { sc_uuid: false },
          { asr_name: false },
          { author: true },
          { system_uuid: true },
          { target_concept_system_version_uuid: false },
          { code: true },
          { target_concept_system_version: false },
          { system: true },
          { target_concept_code: true },
          { assigned_mapper: true },
          { rel_code: false },
          { sc_display: true },
          { target_concept_system: false },
          { comments: true },
          { source_concept_uuid: false },
          { reviewed_date: false },
          { assigned_reviewer: false },
          { "Custom Column 1": true },
          { additional_context: true },
          { "Custom Column 2": true },
          { review_status: true },
          { asr_uuid: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { sc_code: true },
          { rel_display: true },
          { target_concept_display: true },
          { sc_system: false },
        ],
      }}
      _unfilteredSelectedIndex=""
      allowMultiRowSelect={true}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { "Custom Column 2": "left" },
          { review_status: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { special_use: "" },
          { rel_uuid: "" },
          { display: "" },
          { mapping_comments: "" },
          { created_date: "" },
          { relationship_code_uuid: "" },
          { sc_uuid: "" },
          { asr_name: "" },
          { author: "" },
          { system_uuid: "" },
          { target_concept_system_version_uuid: "" },
          { code: "" },
          { target_concept_system_version: "" },
          { system: "" },
          { target_concept_code: "" },
          { assigned_mapper: "" },
          { rel_code: "" },
          { sc_display: "" },
          { target_concept_system: "" },
          { comments: "" },
          { source_concept_uuid: "" },
          { reviewed_date: "" },
          { assigned_reviewer: "" },
          { "Custom Column 1": "" },
          { additional_context: "" },
          { "Custom Column 2": "" },
          { review_status: "" },
          { asr_uuid: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { sc_code: "" },
          { rel_display: "" },
          { target_concept_display: "" },
          { sc_system: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { "Custom Column 1": false },
          { "Custom Column 2": false },
          { review_status: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "modal" },
          { "Custom Column 2": "button" },
          { review_status: "dropdown" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { "Custom Column 2": "Unmap" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { "Custom Column 2": "Un-Map" },
          { review_status: "{{self}}" },
        ],
      }}
      columns={[
        "concept_map_version_uuid",
        "sc_uuid",
        "source_concept_uuid",
        "sc_code",
        "sc_display",
        "sc_system",
        "relationship_code_uuid",
        "rel_uuid",
        "rel_code",
        "rel_display",
        "target_concept_code",
        "target_concept_display",
        "Custom Column 2",
        "target_concept_system",
        "mapping_comments",
        "uuid",
        "review_status",
        "created_date",
        "reviewed_date",
        "author",
        "target_concept_system_version_uuid",
        "Custom Column 1",
        "assigned_reviewer",
        "asr_uuid",
        "asr_name",
      ]}
      columnTypeSpecificExtras={{
        ordered: [
          {
            review_status: {
              ordered: [{ dropdownValues: "{{load_status.data.display}}" }],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { special_use: true },
          { rel_uuid: false },
          { display: true },
          { mapping_comments: false },
          { created_date: true },
          { relationship_code_uuid: false },
          { sc_uuid: false },
          { asr_name: false },
          { author: true },
          { system_uuid: true },
          { target_concept_system_version_uuid: false },
          { code: true },
          { target_concept_system_version: false },
          { system: true },
          { target_concept_code: true },
          { assigned_mapper: true },
          { rel_code: false },
          { sc_display: true },
          { target_concept_system: false },
          { comments: true },
          { source_concept_uuid: false },
          { reviewed_date: false },
          { assigned_reviewer: false },
          { "Custom Column 1": true },
          { additional_context: true },
          { "Custom Column 2": true },
          { review_status: true },
          { asr_uuid: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { sc_code: true },
          { rel_display: true },
          { target_concept_display: true },
          { sc_system: false },
        ],
      }}
      columnWidths={[
        { object: { id: "sc_system", value: 103.65625 } },
        { object: { id: "target_concept_code", value: 145.171875 } },
        { object: { id: "target_concept_display", value: 153.671875 } },
        { object: { id: "target_concept_system", value: 158.875 } },
        { object: { id: "sc_code", value: 104.09375 } },
        { object: { id: "mapping_comments", value: 220.875 } },
        { object: { id: "author", value: 143 } },
        { object: { id: "rel_display", value: 163.03125 } },
        { object: { id: "sc_display", value: 135.984375 } },
        { object: { id: "created_date", value: 175.546875 } },
        { object: { id: "review_status", value: 155.546875 } },
      ]}
      customButtonName=""
      data="{{ load_joined_review_table.data }}"
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "update_review_status" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize={8}
      showClearSelection={true}
      showColumnBorders={true}
      sortMappedValue={{ ordered: [{ review_status: true }] }}
    >
      <KeyValueMap
        id="more_info_modal"
        data="{{ load_joined_review_table.data }}"
        prevRowFormats={{ ordered: [] }}
        prevRowMappers={{ ordered: [] }}
        rows={[
          "a",
          "b",
          "c",
          "concept_map_version_uuid",
          "review_status",
          "mapping_comments",
          "uuid",
          "target_concept_code",
          "target_concept_display",
          "target_concept_system",
          "created_date",
          "reviewed_date",
          "author",
          "source_concept_uuid",
          "relationship_code_uuid",
          "target_concept_system_version_uuid",
          "sc_uuid",
          "sc_code",
          "sc_display",
          "sc_system",
          "assigned_reviewer",
          "rel_uuid",
          "rel_code",
          "rel_display",
          "asr_uuid",
          "asr_name",
        ]}
        rowVisibility={{
          ordered: [
            { a: true },
            { rel_uuid: true },
            { b: true },
            { c: true },
            { mapping_comments: true },
            { created_date: true },
            { relationship_code_uuid: true },
            { sc_uuid: true },
            { asr_name: true },
            { author: true },
            { target_concept_system_version_uuid: true },
            { target_concept_code: true },
            { rel_code: true },
            { sc_display: true },
            { target_concept_system: true },
            { source_concept_uuid: true },
            { reviewed_date: true },
            { assigned_reviewer: true },
            { review_status: true },
            { asr_uuid: true },
            { uuid: true },
            { concept_map_version_uuid: true },
            { sc_code: true },
            { rel_display: true },
            { target_concept_display: true },
            { sc_system: true },
          ],
        }}
      />
    </TableLegacy>
    <Select
      id="status_select"
      allowDeselect={true}
      data="{{ load_status.data }}"
      label="Status"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.display}}"
    />
    <Button id="update_status" styleVariant="solid" text="Update Status" />
  </Frame>
</App>
