<Container
  id="concept_maps_version"
  currentViewIndex={0}
  currentViewKey={0}
  disabled=""
  heightType="fixed"
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  overflowType="hidden"
  showBody={true}
  showHeader={true}
  showInEditor={null}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="concept_maps_version"
      value="{{ self.values[0] }}"
    >
      <Option id="d8772" value="Tab 1" />
      <Option id="0078d" value="Tab 2" />
      <Option id="a0468" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Versions" viewKey={0}>
    <TableLegacy
      id="versions_table"
      _columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "effective_start",
        "effective_end",
        "version",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "comments",
        "concept_map_uuid",
        "Custom Column 1",
        "Custom Column 2",
      ]}
      _columnVisibility={{
        ordered: [
          { effective_end: true },
          { created_date: false },
          { value_set_uuid: false },
          { target_title: false },
          { effective_start: true },
          { name: true },
          { sales: true },
          { source_value_set_version_uuid: false },
          { status: true },
          { source_title: false },
          { comments: false },
          { concept_map_uuid: false },
          { count_loaded_concepts: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
          { version: true },
          { id: true },
          { target_value_set_version_uuid: false },
          { uuid: false },
          { email: true },
          { description: false },
        ],
      }}
      _compatibilityMode={false}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Metrics" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "4f40fa80-9908-11ed-b92d-27dfee9843c6",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{versions_table.selectedRow.data.uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Manage Assignments" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "6634caa0-8161-11ed-a103-6b5287048014",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{versions_table.selectedRow.data.uuid}}\\"}]"',
            },
            {
              actionButtonUrl:
                "https://retool.prod.projectronin.io/apps/Mapping%20App/Mapping%20Assignments?concept_map_version_uuid={{versions_table.selectedRow.data.uuid}}",
            },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
            { actionButtonInternalUrlHashParams: '"[]"' },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Map Concepts" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "navigate_to_mapper" },
            {
              actionButtonInternalUrlPath:
                "184659c0-4e4f-11ed-8a53-4f14117ffdcc",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{versions_table.selectedRow.data.uuid}}\\"}]"',
            },
            {
              actionButtonUrl:
                "https://retool.prod.projectronin.io/apps/Mapping%20App/General%20Mapper%202.0?concept_map_version_uuid={{versions_table.selectedRow.data.uuid}}",
            },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Review Mappings" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "afb4d380-50cb-11ed-b76c-ffbcb400100c",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{versions_table.selectedRow.data.uuid}}\\"}]"',
            },
            {
              actionButtonUrl:
                "https://retool.prod.projectronin.io/apps/Mapping%20App/General%20Mapping%20Review?concept_map_version_uuid={{versions_table.selectedRow.data.uuid}}",
            },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [
          { status: "center" },
          { "Custom Column 1": "center" },
          { "Custom Column 2": "center" },
          { version: "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { effective_end: "" },
          { created_date: "" },
          { value_set_uuid: "" },
          { target_title: "" },
          { effective_start: "" },
          { source_value_set_version_uuid: "" },
          { status: "" },
          { source_title: "" },
          { comments: "" },
          { concept_map_uuid: "" },
          { count_loaded_concepts: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { version: "" },
          { target_value_set_version_uuid: "" },
          { uuid: "" },
          { description: "" },
          { publish_date: "" },
          { published_date: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { created_date: false },
          { target_title: false },
          { source_value_set_version_uuid: false },
          { status: false },
          { source_title: false },
          { comments: false },
          { concept_map_uuid: false },
          { "Custom Column 1": false },
          { "Custom Column 2": false },
          { version: false },
          { target_value_set_version_uuid: false },
          { uuid: false },
          { description: false },
          { published_date: false },
        ],
      }}
      columnFormats={{
        ordered: [
          { status: "SingleTagDataCell" },
          { "Custom Column 1": "ModalDataCell" },
          { "Custom Column 2": "ModalDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { "Custom Column 2": "Download" },
        ],
      }}
      columnMappers={{
        ordered: [
          { status: "{{self}}" },
          { "Custom Column 1": "Show More Info" },
          { "Custom Column 2": "Download Report" },
        ],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "effective_start",
        "effective_end",
        "version",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "comments",
        "concept_map_uuid",
        "Custom Column 1",
        "Custom Column 2",
      ]}
      columnTypeProperties={{
        ordered: [
          {
            status: {
              ordered: [
                {
                  optionData:
                    "{\n  value: {{get_statuses.data.display}},\n  label: []\n}",
                },
                { colorMode: "none" },
                { allowCustomValue: false },
                { optionLabels: "{{ item.label }}" },
                { optionColors: { array: [] } },
                { optionValues: "{{ item.value }}" },
              ],
            },
          },
          { "Custom Column 1": { ordered: [] } },
          { "Custom Column 2": { ordered: [] } },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            status: {
              ordered: [{ dropdownValues: "{{get_statuses.data.display}}" }],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { effective_end: true },
          { created_date: false },
          { value_set_uuid: false },
          { effective_start: true },
          { name: true },
          { sales: true },
          { status: true },
          { comments: false },
          { concept_map_uuid: false },
          { "Custom Column 1": true },
          { version: true },
          { id: true },
          { uuid: false },
          { email: true },
          { description: false },
          { "Custom Column 2": true },
        ],
      }}
      columnWidths={[
        { object: { id: "effective_start", value: 113 } },
        { object: { id: "concept_map_uuid", value: 133.9375 } },
        { object: { id: "description", value: 103.125 } },
        { object: { id: "created_date", value: 123.28125 } },
        { object: { id: "comments", value: 261.453125 } },
        { object: { id: "effective_end", value: 131.203125 } },
        { object: { id: "version", value: 78.953125 } },
        { object: { id: "status", value: 107.609375 } },
        { object: { id: "__retool__action_list", value: 602.203125 } },
        { object: { id: "source_title", value: 273 } },
        { object: { id: "target_title", value: 275.203125 } },
        { object: { id: "Custom Column 1", value: 167.625 } },
        { object: { id: "Custom Column 2", value: 247 } },
        { object: { id: "published_date", value: 207.203125 } },
      ]}
      customButtonName=""
      data="{{ select_concept_map_version.data }}"
      events={[]}
      pageSize={10}
      showColumnBorders={true}
      sortByRawValue={{ ordered: [{ "Custom Column 1": false }] }}
      sortMappedValue={{ ordered: [{ "Custom Column 1": true }] }}
    >
      <KeyValueMap
        id="more_information_modal_key_value"
        data="{{populate_more_info_modal.data}}"
        prevRowFormats={{ ordered: [] }}
        prevRowMappers={{ ordered: [] }}
        rowHeaderNames={{ ordered: [{ uuid: "version uuid" }] }}
        rows={[
          "a",
          "b",
          "c",
          "concept_map_uuid",
          "uuid",
          "name",
          "title",
          "publisher",
          "author",
          "purpose",
          "description",
          "created_date",
          "experimental",
          "comments",
          "status",
          "effective_start",
          "effective_end",
          "version",
          "published_date",
          "source_value_set_version_uuid",
          "target_value_set_version_uuid",
          "count_loaded_concepts",
        ]}
        rowVisibility={{
          ordered: [
            { a: true },
            { b: true },
            { c: true },
            { effective_end: true },
            { created_date: true },
            { experimental: true },
            { effective_start: true },
            { author: true },
            { name: true },
            { source_value_set_version_uuid: true },
            { status: true },
            { comments: true },
            { concept_map_uuid: true },
            { count_loaded_concepts: true },
            { version: true },
            { title: true },
            { target_value_set_version_uuid: true },
            { uuid: true },
            { publisher: true },
            { description: true },
            { purpose: true },
            { published_date: true },
          ],
        }}
      />
      <Button
        id="tpm_report"
        _disclosedFields={{ array: [] }}
        styleVariant="solid"
        text="Download TPM Report"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="tpm_report_builder"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="mapping_with_valuesets"
        _disclosedFields={{ array: [] }}
        styleVariant="solid"
        text="Mapping With Valuesets"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="report_with_valuesets"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </TableLegacy>
  </View>
  <View id="1" label="Metadata" viewKey={1}>
    <KeyValueMap
      id="metadata_key_table"
      data="{{load_concept_map_version_metadata.data}}"
      prevRowFormats={{ ordered: [] }}
      prevRowMappers={{ ordered: [] }}
      rows={[
        "a",
        "b",
        "c",
        "uuid",
        "url",
        "identifier",
        "name",
        "title",
        "publisher",
        "contact",
        "description",
        "immutable",
        "experimental",
        "purpose",
        "type",
        "author",
        "created_date",
        "include_self_map",
        "source_value_set_uuid",
        "target_value_set_uuid",
        "use_case_uuid",
        "auto_advance_mapping",
        "auto_fill_search",
        "show_target_codes",
      ]}
      rowVisibility={{
        ordered: [
          { contact: true },
          { include_self_map: true },
          { a: true },
          { auto_advance_mapping: true },
          { b: true },
          { immutable: true },
          { c: true },
          { created_date: true },
          { experimental: true },
          { identifier: true },
          { source_value_set_uuid: true },
          { author: true },
          { name: true },
          { url: true },
          { use_case_uuid: true },
          { target_value_set_uuid: true },
          { auto_fill_search: true },
          { title: true },
          { show_target_codes: true },
          { type: true },
          { uuid: true },
          { publisher: true },
          { description: true },
          { purpose: true },
        ],
      }}
    />
  </View>
  <View id="2" label="Edit Metadata" viewKey={2}>
    <TableLegacy
      id="edit_metadata"
      _columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "url",
        "identifier",
        "title",
        "publisher",
        "contact",
        "description",
        "immutable",
        "experimental",
        "purpose",
        "type",
        "author",
        "created_date",
      ]}
      _columnVisibility={{
        ordered: [
          { contact: true },
          { immutable: true },
          { created_date: true },
          { experimental: true },
          { identifier: true },
          { author: true },
          { name: true },
          { sales: true },
          { url: true },
          { title: true },
          { type: true },
          { id: true },
          { uuid: false },
          { publisher: true },
          { email: true },
          { description: true },
          { purpose: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { contact: "" },
          { immutable: "" },
          { created_date: "" },
          { experimental: "" },
          { identifier: "" },
          { author: "" },
          { name: "" },
          { url: "" },
          { title: "" },
          { type: "" },
          { uuid: "" },
          { publisher: "" },
          { description: "" },
          { purpose: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { contact: true },
          { immutable: true },
          { experimental: true },
          { identifier: true },
          { author: true },
          { name: true },
          { url: true },
          { title: true },
          { type: true },
          { publisher: true },
          { description: true },
          { purpose: true },
        ],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "url",
        "identifier",
        "title",
        "publisher",
        "contact",
        "description",
        "immutable",
        "experimental",
        "purpose",
        "type",
        "author",
        "created_date",
      ]}
      columnVisibility={{
        ordered: [
          { contact: true },
          { immutable: true },
          { created_date: true },
          { experimental: true },
          { identifier: true },
          { author: true },
          { name: true },
          { sales: true },
          { url: true },
          { title: true },
          { type: true },
          { id: true },
          { uuid: false },
          { publisher: true },
          { email: true },
          { description: true },
          { purpose: true },
        ],
      }}
      customButtonName=""
      data="{{load_concept_map_version_metadata.data}}"
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "save_concept_map_metadata_changes" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize={5}
      showColumnBorders={true}
    />
  </View>
  <View id="3" label="Create New Version" viewKey={3}>
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      value="This will create a new version of the concept map, based on the **{{load_latest_version_query.data.version[0]}}**, the current highest version.

The new concept map will map from the source value set (**{{source_value_set_info.data.title}} version {{source_value_set_info.data.version}}**) to the target value set (**{{target_value_set_info.data.title}} version {{target_value_set_info.data.version}}**).

Any existing mappings which are still valid for the most recent versions of the target and source terminologies will be copied to the new version."
      verticalAlign="center"
    />
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <TextArea
      id="description_input"
      _disclosedFields={{ array: [] }}
      autoResize={true}
      label="Description"
      labelAlign="right"
      labelWidth="20"
      labelWrap={true}
      minLines={2}
      placeholder="Description of the new version. "
    />
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      value="**Info for new concept map version**"
      verticalAlign="center"
    />
    <Checkbox
      id="checkbox_require_review_for_non_equivalent_relationships"
      _disclosedFields={{ array: [] }}
      label="Require review for non-equivalent relationship"
    />
    <Checkbox
      id="checkbox_require_review_no_maps_not_in_target"
      _disclosedFields={{ array: [] }}
      label="Require review for no maps not in target"
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      disabled={
        '{{description_input.value == "" || is_most_recent_source_transformer.value == false || is_most_recent_target_transformer.value == false}}'
      }
      styleVariant="solid"
      text="Create new vesion of {{load_concept_map_version_metadata.data.title[0]}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="new_version_submission"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text4"
      hidden="{{is_most_recent_source_transformer.value && is_most_recent_target_transformer.value}}"
      style={{ ordered: [{ color: "warning" }] }}
      value="#### 🛑  It appears the most recent version of the value set is not ACTIVE!  🛑"
      verticalAlign="center"
    />
  </View>
</Container>
