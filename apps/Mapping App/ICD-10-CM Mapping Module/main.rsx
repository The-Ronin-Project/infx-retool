<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="cm_version_uuid" defaultValue="{{urlparams.uuid}}" />
  <GlobalWidgetProp id="map_comments" defaultValue="{{mapcomments.value}}" />
  <GlobalWidgetProp
    id="relationship"
    defaultValue="{{relationship_selection.value}}"
  />
  <GlobalWidgetProp
    id="source_concept"
    defaultValue="{{source_concepts.selectedRow.data.uuid}}"
  />
  <Frame id="$main" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <TabbedContainerWidget id="tabs" tabNames={'["Keyword Search"]'}>
        <Select
          id="version_select"
          allowDeselect={true}
          allowSearch={true}
          data="{{load_icd_10_cm_versions.data.uuid}}"
          deprecatedLabels="{{load_icd_10_cm_versions.data.version}}"
          label="Version Select"
          labels="{{ self.deprecatedLabels[i] }}"
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{load_icd_10_cm_versions.data.uuid[0]}}"
          values="{{ item }}"
        />
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
            data="{{code_includes_and_excludes.data}}"
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
              "section_name",
              "chapter_name",
              "chapter_number",
            ]}
            rowVisibility={{
              ordered: [
                { a: true },
                { billable: false },
                { b: true },
                { display: true },
                { version_uuid: false },
                { c: true },
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
          />
        </Modal>
        <TextInput
          id="search_string"
          label="Search"
          placeholder="Search for keyword or code"
          showClear={true}
        />
        <TableLegacy
          id="display_results"
          _columns={[
            "code",
            "Custom Column 2",
            "display",
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
              { "Custom Column 2": true },
            ],
          }}
          applyDynamicSettingsToColumnOrder={false}
          calculatedColumns={["Custom Column 2"]}
          columnAlignment={{ ordered: [{ "Custom Column 2": "left" }] }}
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
          columnEditable={{
            ordered: [
              { uuid: false },
              { "Custom Column 1": false },
              { "Custom Column 2": false },
            ],
          }}
          columnFormats={{ ordered: [{ "Custom Column 2": "button" }] }}
          columnHeaderNames={{ ordered: [{ "Custom Column 2": "Map" }] }}
          columnMappers={{ ordered: [{ "Custom Column 2": "Map" }] }}
          columns={[
            "code",
            "Custom Column 2",
            "display",
            "version_uuid",
            "section_name",
            "chapter_name",
            "chapter_number",
          ]}
          columnTypeSpecificExtras={{
            ordered: [
              {
                "Custom Column 2": {
                  ordered: [{ buttonType: "action" }, { action: "map" }],
                },
              },
            ],
          }}
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
              { "Custom Column 2": true },
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
          pageSize={16}
        />
      </TabbedContainerWidget>
    </ModuleContainerWidget>
  </Frame>
</App>
