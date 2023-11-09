<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <TabbedContainerWidget
      id="tabs"
      tabNames={'["Version Browser", "Keyword Search"]'}
    >
      <TextInput
        id="description_input"
        label="Description for new rule:"
        placeholder="Enter description"
      />
      <Select
        id="version_select"
        allowDeselect={true}
        allowSearch={true}
        captionByIndex=""
        data="{{ load_icd_10_cm_versions.data }}"
        deprecatedLabels=""
        label="Version Select:"
        labels="{{item.version}}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{load_icd_10_cm_versions.data.uuid[0]}}"
        values="{{item.uuid}}"
      />
      <TextInput
        id="search_string"
        label="Search:"
        placeholder="Search for keyword or code"
        showClear={true}
      />
      <Button
        id="include_chapter"
        styleVariant="solid"
        text="Include Selected Chapter"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="save_chapter_rule"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="include_section"
        styleVariant="solid"
        text="Include Selected Section"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="save_section_rule"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Modal
        id="show_details"
        buttonText="Show Code Details"
        style={{
          ordered: [
            { "border-color": "" },
            { "primary-surface": "" },
            { "accent-foreground": "" },
            { "primary-foreground": "" },
            { "accent-background": "rgba(130, 132, 135, 1)" },
            { "border-radius": "" },
            { "secondary-surface": "" },
            { "primary-text": "" },
            { "primary-background": "" },
          ],
        }}
      >
        <KeyValueMap
          id="code_details"
          data="{{code_table.selectedRow.data}}"
          prevRowFormats={{ ordered: [] }}
          prevRowMappers={{ ordered: [] }}
          rows={[
            "a",
            "b",
            "c",
            "uuid",
            "code",
            "display",
            "section_uuid",
            "parent_code_uuid",
            "includes",
            "excludes1",
            "excludes2",
            "billable",
            "version_uuid",
          ]}
          rowVisibility={{
            ordered: [
              { a: true },
              { billable: false },
              { b: true },
              { display: true },
              { version_uuid: false },
              { c: true },
              { includes: true },
              { code: true },
              { section_uuid: false },
              { excludes1: true },
              { parent_code_uuid: false },
              { excludes2: true },
              { uuid: false },
            ],
          }}
        />
      </Modal>
      <TableLegacy
        id="display_results"
        _columns={[
          "uuid",
          "code",
          "display",
          "section_uuid",
          "parent_code_uuid",
          "includes",
          "excludes1",
          "excludes2",
          "billable",
          "version_uuid",
          "section_name",
          "chapter_name",
          "chapter_number",
        ]}
        _columnVisibility={{
          ordered: [
            { billable: false },
            { display: true },
            { version_uuid: false },
            { section_name: true },
            { includes: true },
            { code: true },
            { section_uuid: false },
            { excludes1: true },
            { parent_code_uuid: false },
            { excludes2: true },
            { chapter_number: true },
            { uuid: false },
            { chapter_name: true },
          ],
        }}
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Include" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "save_code_rule" },
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
            { billable: "" },
            { display: "" },
            { version_uuid: "" },
            { section_name: "" },
            { includes: "" },
            { code: "" },
            { section_uuid: "" },
            { excludes1: "" },
            { parent_code_uuid: "" },
            { excludes2: "" },
            { chapter_number: "" },
            { uuid: "" },
            { chapter_name: "" },
          ],
        }}
        columnEditable={{ ordered: [{ uuid: false }] }}
        columns={[
          "uuid",
          "code",
          "display",
          "section_uuid",
          "parent_code_uuid",
          "includes",
          "excludes1",
          "excludes2",
          "billable",
          "version_uuid",
          "section_name",
          "chapter_name",
          "chapter_number",
        ]}
        columnVisibility={{
          ordered: [
            { billable: false },
            { display: true },
            { version_uuid: false },
            { section_name: true },
            { includes: true },
            { code: true },
            { section_uuid: false },
            { excludes1: true },
            { parent_code_uuid: false },
            { excludes2: true },
            { chapter_number: true },
            { uuid: false },
            { chapter_name: true },
          ],
        }}
        columnWidths={[
          { object: { id: "version_uuid", value: 319 } },
          { object: { id: "display", value: 312 } },
          { object: { id: "section_name", value: 426.015625 } },
          { object: { id: "chapter_name", value: 374.3515625 } },
          { object: { id: "code", value: 94.6015625 } },
          { object: { id: "__retool__action_list", value: 85 } },
        ]}
        customButtonName=""
        data="{{search_keyword.data.hits.hits.map(hit => hit['_source'])}}"
        emptyMessage="No Rows Found"
        overflowType="scroll"
        pageSize={19}
      />
      <TableLegacy
        id="chapter_table"
        _columns={[
          "uuid",
          "terminology",
          "version",
          "effective_start",
          "effective_end",
          "fhir_uri",
          "is_standard",
          "chapter_name",
          "chapter_number",
          "includes",
          "excludes1",
          "excludes2",
          "use_additional_code",
          "version_uuid",
        ]}
        _columnVisibility={{
          ordered: [
            { version_uuid: false },
            { effective_end: true },
            { effective_start: true },
            { includes: false },
            { use_additional_code: false },
            { is_standard: true },
            { terminology: true },
            { fhir_uri: true },
            { version: true },
            { excludes1: false },
            { excludes2: false },
            { chapter_number: false },
            { uuid: false },
            { chapter_name: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        columnAllowOverflow={{ ordered: [{ chapter_name: true }] }}
        columnColors={{
          ordered: [
            { version_uuid: "" },
            { effective_end: "" },
            { effective_start: "" },
            { includes: "" },
            { use_additional_code: "" },
            { is_standard: "" },
            { terminology: "" },
            { fhir_uri: "" },
            { version: "" },
            { excludes1: "" },
            { excludes2: "" },
            { chapter_number: "" },
            { uuid: "" },
            { chapter_name: "" },
          ],
        }}
        columns={[
          "uuid",
          "terminology",
          "version",
          "effective_start",
          "effective_end",
          "fhir_uri",
          "is_standard",
          "chapter_name",
          "chapter_number",
          "includes",
          "excludes1",
          "excludes2",
          "use_additional_code",
          "version_uuid",
        ]}
        columnVisibility={{
          ordered: [
            { version_uuid: false },
            { effective_end: true },
            { effective_start: true },
            { includes: false },
            { use_additional_code: false },
            { is_standard: true },
            { terminology: true },
            { fhir_uri: true },
            { version: true },
            { excludes1: false },
            { excludes2: false },
            { chapter_number: false },
            { uuid: false },
            { chapter_name: true },
          ],
        }}
        customButtonName=""
        data="{{ load_chapters.data}}"
        overflowType="scroll"
        pageSize={19}
        showColumnBorders={true}
      />
      <TableLegacy
        id="section_table"
        _columns={[
          "uuid",
          "section_number",
          "section_name",
          "includes",
          "excludes1",
          "excludes2",
          "chapter",
          "version_uuid",
        ]}
        _columnVisibility={{
          ordered: [
            { uuid: false },
            { section_name: true },
            { section_number: true },
            { includes: false },
            { excludes1: false },
            { excludes2: false },
            { chapter: false },
            { version_uuid: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        columnAllowOverflow={{ ordered: [{ section_name: true }] }}
        columnColors={{
          ordered: [
            { uuid: "" },
            { section_name: "" },
            { section_number: "" },
            { includes: "" },
            { excludes1: "" },
            { excludes2: "" },
            { chapter: "" },
            { version_uuid: "" },
          ],
        }}
        columns={[
          "uuid",
          "section_number",
          "section_name",
          "includes",
          "excludes1",
          "excludes2",
          "chapter",
          "version_uuid",
        ]}
        columnVisibility={{
          ordered: [
            { uuid: false },
            { section_name: true },
            { section_number: true },
            { includes: false },
            { excludes1: false },
            { excludes2: false },
            { chapter: false },
            { version_uuid: false },
          ],
        }}
        columnWidths={[
          { object: { id: "section_name", value: 436.3125 } },
          { object: { id: "section_number", value: 48.000030517578125 } },
        ]}
        customButtonName=""
        data="{{ load_sections.data }}"
        overflowType="scroll"
        pageSize={19}
        showColumnBorders={true}
      />
      <TableLegacy
        id="code_table"
        _columns={[
          "uuid",
          "code",
          "display",
          "section_uuid",
          "parent_code_uuid",
          "includes",
          "excludes1",
          "excludes2",
          "billable",
          "version_uuid",
        ]}
        _columnVisibility={{
          ordered: [
            { billable: false },
            { display: true },
            { version_uuid: false },
            { includes: false },
            { code: true },
            { section_uuid: false },
            { excludes1: false },
            { parent_code_uuid: false },
            { excludes2: false },
            { uuid: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Include" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "save_code_rule" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnAllowOverflow={{ ordered: [{ display: true }] }}
        columnColors={{
          ordered: [
            { billable: "" },
            { display: "" },
            { version_uuid: "" },
            { includes: "" },
            { code: "" },
            { section_uuid: "" },
            { excludes1: "" },
            { parent_code_uuid: "" },
            { excludes2: "" },
            { uuid: "" },
          ],
        }}
        columns={[
          "uuid",
          "code",
          "display",
          "section_uuid",
          "parent_code_uuid",
          "includes",
          "excludes1",
          "excludes2",
          "billable",
          "version_uuid",
        ]}
        columnVisibility={{
          ordered: [
            { billable: false },
            { display: true },
            { version_uuid: false },
            { includes: false },
            { code: true },
            { section_uuid: false },
            { excludes1: false },
            { parent_code_uuid: false },
            { excludes2: false },
            { uuid: false },
          ],
        }}
        columnWidths={[
          { object: { id: "display", value: 417 } },
          { object: { id: "__retool__action_list", value: 86 } },
          { object: { id: "code", value: 70.00006103515625 } },
        ]}
        customButtonName=""
        data="{{ load_codes.data }}"
        events={[]}
        overflowType="scroll"
        pageSize={19}
        showColumnBorders={true}
      />
    </TabbedContainerWidget>
  </Frame>
</App>
