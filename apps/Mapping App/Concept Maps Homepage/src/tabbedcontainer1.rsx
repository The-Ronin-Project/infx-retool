<Container
  id="tabbedcontainer1"
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
  style={{
    ordered: [
      { background: "rgb(240, 244, 248)" },
      { headerBackground: "rgb(217, 226, 236)" },
    ],
  }}
  styleContext={{ ordered: [{ textDark: "rgb(51, 78, 104)" }] }}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { selectedBackground: "rgba(240, 244, 248, 0.7)" },
          { unselectedText: "rgb(98, 125, 152)" },
        ],
      }}
      targetContainerId="tabbedcontainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="4b8d1" value="Tab 1" />
      <Option id="9f555" value="Tab 2" />
      <Option id="0fa44" value="Tab 3" />
    </Tabs>
    <Link
      id="link1"
      iconBefore="line/interface-arrows-turn-backward"
      text="Dashboard"
    >
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "3b52c88c-6488-11ed-b9e7-8f03ff165179" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </Header>
  <View id="0" label="Browse Existing Concept Maps" viewKey={0}>
    <TextInput
      id="filter"
      label="Filter by Title or Description"
      placeholder="Enter value"
      showClear={true}
    />
    <TableLegacy
      id="concept_map_metadata_table"
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
      _columnSummaryTypes={{
        ordered: [{ use_case_names: "" }, { use_case_array: "" }],
      }}
      _columnSummaryValues={{
        ordered: [{ use_case_names: "" }, { use_case_array: "" }],
      }}
      _columnVisibility={{
        ordered: [
          { contact: false },
          { include_self_map: false },
          { auto_advance_mapping: false },
          { immutable: false },
          { created_date: false },
          { experimental: false },
          { formatted_created_date: false },
          { identifier: false },
          { source_value_set_title: false },
          { source_value_set_uuid: false },
          { author: false },
          { name: false },
          { sales: true },
          { url: false },
          { use_case_uuid: false },
          { target_value_set_uuid: false },
          { auto_fill_search: false },
          { title: true },
          { show_target_codes: false },
          { type: false },
          { id: true },
          { uuid: false },
          { publisher: false },
          { email: true },
          { description: false },
          { purpose: false },
          { target_value_set_title: false },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "View/Edit" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "cdc1d7c0-9027-11ec-b0c3-ab01646c36a6",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{concept_map_metadata_table.selectedRow.data.uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      columnAlignment={{
        ordered: [{ use_case_names: "left" }, { use_case_array: "left" }],
      }}
      columnColors={{
        ordered: [
          { contact: "" },
          { include_self_map: "" },
          { auto_advance_mapping: "" },
          { immutable: "" },
          { use_case_array: "" },
          { created_date: "" },
          { experimental: "" },
          { formatted_created_date: "" },
          { identifier: "" },
          { source_value_set_title: "" },
          { source_value_set_uuid: "" },
          { author: "" },
          { name: "" },
          { url: "" },
          { use_case_names: "" },
          { use_case_uuid: "" },
          { target_value_set_uuid: "" },
          { auto_fill_search: "" },
          { title: "" },
          { show_target_codes: "" },
          { type: "" },
          { uuid: "" },
          { publisher: "" },
          { description: "" },
          { purpose: "" },
          { target_value_set_title: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { name: false },
          { contact: true },
          { description: true },
          { immutable: true },
          { experimental: true },
          { purpose: true },
          { type: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { use_case_names: "default" },
          { use_case_array: "SingleTagDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { title: "Title" },
          { author: "Author" },
          { use_case_array: "Use Case" },
        ],
      }}
      columnMappers={{
        ordered: [{ use_case_names: "" }, { use_case_array: "" }],
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
      columnTypeProperties={{
        ordered: [
          { use_case_names: { ordered: [] } },
          {
            use_case_array: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: { array: [] } },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { contact: false },
          { immutable: false },
          { created_date: true },
          { experimental: false },
          { identifier: false },
          { author: true },
          { name: false },
          { sales: true },
          { url: false },
          { title: true },
          { type: false },
          { id: true },
          { uuid: false },
          { publisher: false },
          { email: true },
          { description: false },
          { purpose: false },
        ],
      }}
      columnWidths={[
        { object: { id: "contact", value: 77 } },
        { object: { id: "immutable", value: 95 } },
        { object: { id: "experimental", value: 108.75 } },
        { object: { id: "name", value: 272.40625 } },
        { object: { id: "description", value: 337.09375 } },
        { object: { id: "created_date", value: 150 } },
        { object: { id: "author", value: 222.765625 } },
        { object: { id: "__retool__action_list", value: 154.09375 } },
        { object: { id: "use_case_array", value: 239.1875 } },
        { object: { id: "title", value: 564.71875 } },
      ]}
      customButtonName=""
      data="{{load_concept_maps.data}}"
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "tableBulkUpdateActionTrigger" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      pageSize={19}
      showColumnBorders={true}
      sortMappedValue={{ ordered: [{ use_case_names: false }] }}
      style={{
        ordered: [
          { headerBackground: "rgb(217, 226, 236)" },
          { headerText: "rgb(130, 154, 177)" },
        ],
      }}
    />
    <Divider id="divider5" />
    <Text
      id="text8"
      value="##### {{ concept_map_metadata_table.selectedRow.data.title }}"
      verticalAlign="center"
    />
    <Text
      id="text9"
      value="{{concept_map_metadata_table.selectedRow.data.description}}"
      verticalAlign="center"
    />
    <Text id="text10" value="**Source Value Set**" verticalAlign="center" />
    <Link
      id="source_value_set_link"
      showUnderline="hover"
      text="{{concept_map_metadata_table.selectedRow.data.source_value_set_title}}"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "4f31f1c8-2228-11ec-90d7-a387d41c775c" },
            {
              options: {
                ordered: [
                  {
                    queryParams: [
                      {
                        ordered: [
                          { key: "uuid" },
                          {
                            value:
                              "{{concept_map_metadata_table.selectedRow.data.source_value_set_uuid}}",
                          },
                        ],
                      },
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
    </Link>
    <Text id="text11" value="**Target Value Set**" verticalAlign="center" />
    <Link
      id="link3"
      showUnderline="hover"
      text="{{concept_map_metadata_table.selectedRow.data.target_value_set_title}}"
    />
    <Text id="text12" value="**Purpose**" verticalAlign="center" />
    <Text
      id="text13"
      value="{{concept_map_metadata_table.selectedRow.data.purpose}}"
      verticalAlign="center"
    />
    <Text id="text14" value="**Use Case(s)**" verticalAlign="center" />
    <Link
      id="link4"
      showUnderline="hover"
      text="{{use_case_info.data.name[0]}}"
    />
    <Text id="text15" value="**Created Date**" verticalAlign="center" />
    <Text
      id="text22"
      value="{{concept_map_metadata_table.selectedRow.data.formatted_created_date}}"
      verticalAlign="center"
    />
    <Text id="text20" value="**Name**" verticalAlign="center" />
    <Text
      id="text21"
      value="{{concept_map_metadata_table.selectedRow.data.name}}"
      verticalAlign="center"
    />
    <Text id="text16" value="**UUID**" verticalAlign="center" />
    <Text
      id="text17"
      value="{{concept_map_metadata_table.selectedRow.data.uuid}}"
      verticalAlign="center"
    />
    <Text
      id="text23"
      value="**Experimental (Test) Content**"
      verticalAlign="center"
    />
    <Text
      id="text24"
      value="{{concept_map_metadata_table.selectedRow.data.experimental}}"
      verticalAlign="center"
    />
    <Include src="./modal1.rsx" />
  </View>
  <View id="1" label="Create A New Concept Map" viewKey={1}>
    <Form
      id="form1"
      disabled=""
      disableSubmit="{{source_terminology_version.value==undefined || target_terminology_version.value==undefined}}"
      heightType="fixed"
      hidden={null}
      hoistFetching={true}
      loading=""
      maintainSpaceWhenHidden={null}
      overflowType="hidden"
      showBody={true}
      showFooter={true}
      showInEditor={null}
      style={{ ordered: [{ background: "rgb(240, 244, 248)" }] }}
    >
      <Text id="text6" value="**New Concept Map**" verticalAlign="center" />
      <Divider id="divider2" />
      <Divider id="divider3" />
      <TextInput
        id="title_input"
        disabled=""
        hidden={null}
        label="Title"
        labelAlign="right"
        labelCaption="human-readable"
        labelWrap={true}
        maintainSpaceWhenHidden={null}
        placeholder="Enter a value"
        required={true}
        showClear={true}
        showInEditor={null}
      />
      <TextInput
        id="name_input"
        label="Name "
        labelAlign="right"
        labelCaption="machine-readable"
        maxLength="254"
        pattern="^\w+$"
        patternType="regex"
        placeholder="Enter value"
        required={true}
        showCharacterCount={true}
        value="{{title_input.value.toLowerCase().replace(/[^\w]+/g, '')}}"
      />
      <TextInput
        id="description_text_input"
        disabled=""
        hidden={null}
        label="Description"
        labelAlign="right"
        labelWrap={true}
        maintainSpaceWhenHidden={null}
        placeholder="What content will be in this concept map?"
        required={true}
        showClear={true}
        showInEditor={null}
      />
      <Select
        id="use_case"
        captionByIndex=""
        colorByIndex=""
        data="{{ use_case_select.data }}"
        disabledByIndex=""
        fallbackTextByIndex=""
        hiddenByIndex=""
        iconByIndex=""
        imageByIndex=""
        label="Use Case"
        labels="{{ item.name }}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        required={true}
        showSelectionIndicator={true}
        tooltipByIndex=""
        values="{{ item.uuid }}"
      />
      <Link id="use_case_link" text="create_new_use_case" />
      <Checkbox
        id="experimental_check_box"
        label="Experimental"
        labelCaption="(Not For Production)"
        labelWrap={true}
        value="false"
      />
      <Alert
        id="version_alert"
        description="STOP! no active version"
        hidden="{{source_terminology_version.value!=undefined}}"
        maintainSpaceWhenHidden={true}
        showInEditor={false}
        title="NOT ACTIVE"
        type="error"
      />
      <Select
        id="source_terminology"
        captionByIndex=""
        colorByIndex=""
        data="{{ source_and_target_value_sets.data }}"
        disabledByIndex=""
        fallbackTextByIndex=""
        hiddenByIndex=""
        iconByIndex=""
        imageByIndex=""
        label="Source Terminology"
        labels="{{ item.title }}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        required={true}
        showSelectionIndicator={true}
        tooltipByIndex=""
        values="{{ item.uuid }}"
      >
        <Option id="ec943" value="Option 1" />
        <Option id="967ad" value="Option 2" />
        <Option id="cf731" value="Option 3" />
      </Select>
      <Select
        id="source_terminology_version"
        captionByIndex=""
        colorByIndex=""
        data="{{ source_version.data }}"
        disabledByIndex=""
        fallbackTextByIndex=""
        hiddenByIndex=""
        hideLabel={true}
        hideValidationMessage={true}
        iconByIndex=""
        imageByIndex=""
        labels="{{ item.version }}"
        overlayMaxHeight={375}
        placeholder="Select version"
        required={true}
        showSelectionIndicator={true}
        tooltipByIndex=""
        value="{{source_version.data.uuid[0]}}"
        values="{{ item.uuid }}"
      />
      <Alert
        id="version_alert2"
        description="STOP! no active version"
        hidden="{{target_terminology_version.value!=undefined}}"
        maintainSpaceWhenHidden={true}
        showInEditor={false}
        title="NOT ACTIVE"
        type="error"
      />
      <Select
        id="target_terminology"
        captionByIndex=""
        colorByIndex=""
        data="{{ source_and_target_value_sets.data }}"
        disabledByIndex=""
        fallbackTextByIndex=""
        hiddenByIndex=""
        iconByIndex=""
        imageByIndex=""
        label="Target Terminology"
        labels="{{ item.title }}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        required={true}
        showSelectionIndicator={true}
        tooltipByIndex=""
        values="{{ item.uuid }}"
      />
      <Select
        id="target_terminology_version"
        captionByIndex=""
        colorByIndex=""
        data="{{ target_version.data }}"
        disabledByIndex=""
        fallbackTextByIndex=""
        hiddenByIndex=""
        hideLabel={true}
        hideValidationMessage={true}
        iconByIndex=""
        imageByIndex=""
        labels="{{ item.version }}"
        overlayMaxHeight={375}
        placeholder="Select version"
        required={true}
        showSelectionIndicator={true}
        tooltipByIndex=""
        value="{{target_version.data.uuid[0]}}"
        values="{{ item.uuid }}"
      />
      <Text id="text7" value="**Version 1**" verticalAlign="center" />
      <Divider id="divider4" />
      <TextInput
        id="version_description"
        label="Description"
        placeholder="Enter value"
        required={true}
        value="Initial version"
      />
      <Button id="button3" styleVariant="solid" text="Create New Concept Map">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="create_new_concept_map"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="create_new_concept_map"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="2" label="Duplicate Existing Concept Map" viewKey={2}>
    <Text
      id="text1"
      value="This form allows you to create a new value set by copying an existing value set and renaming it."
      verticalAlign="center"
    />
    <Select
      id="concept_map_drop_down_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_concept_maps.data.uuid}}"
      deprecatedLabels="{{load_concept_maps.data.title}}"
      label="Select an existing value set to duplicate"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="version_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_versions_of_specific_concept_map.data.uuid}}"
      deprecatedLabels="{{load_versions_of_specific_concept_map.data.version}}"
      label="Select a specific version to duplicate"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Text
      id="text2"
      value="**Metadata for selected value set**"
      verticalAlign="center"
    />
    <KeyValueMap
      id="keyValue1"
      data="{{load_concept_map_metadata.data}}"
      keyTitle="Concept Map Property"
      prevRowFormats={{ ordered: [] }}
      prevRowMappers={{ ordered: [] }}
      rowHeaderNames={{
        ordered: [
          { vs_description: "Value Set Description" },
          { vsv_description: "Version Description" },
        ],
      }}
      rows={[
        "a",
        "b",
        "c",
        "vs_description",
        "vsv_description",
        "uuid",
        "effective_start",
        "effective_end",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "version",
        "comments",
        "title",
        "name",
        "publisher",
        "purpose",
        "contact",
        "immutable",
        "experimental",
        "type",
        "author",
        "cm_description",
        "cmv_description",
        "concept_map_uuid",
        "published_date",
        "source_value_set_version_uuid",
        "target_value_set_version_uuid",
        "count_loaded_concepts",
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
          { effective_end: true },
          { created_date: false },
          { value_set_uuid: false },
          { cm_description: true },
          { experimental: true },
          { cmv_description: true },
          { source_value_set_uuid: true },
          { effective_start: true },
          { author: true },
          { name: false },
          { source_value_set_version_uuid: true },
          { use_case_uuid: true },
          { status: true },
          { target_value_set_uuid: true },
          { auto_fill_search: true },
          { comments: true },
          { concept_map_uuid: true },
          { count_loaded_concepts: true },
          { vsv_description: true },
          { version: false },
          { title: false },
          { vs_description: true },
          { show_target_codes: true },
          { type: false },
          { target_value_set_version_uuid: true },
          { uuid: false },
          { publisher: false },
          { description: false },
          { purpose: true },
          { published_date: true },
        ],
      }}
      style={{
        ordered: [
          { "primary-background": "rgb(217, 226, 236)" },
          { "primary-foreground": "rgb(130, 154, 177)" },
        ],
      }}
      valueTitle="Data"
    />
    <Text
      id="text3"
      value="#### Set Metadata for Duplicated Value Set"
      verticalAlign="center"
    />
    <TextInput
      id="title_input_dup"
      label="Title"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="name_input_dup"
      label="Name"
      maxLength="254"
      pattern="^\w+$"
      patternType="regex"
      placeholder="Enter value"
      required={true}
      showCharacterCount={true}
      value="{{title_input_dup.value.replace(/[^\w]+/g, '')}}"
    />
    <TextInput
      id="description_input"
      label="Description (clinical explanation of value set contents)"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="purpose_input"
      label="Purpose (business reason for value set)"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="contact_input"
      label="Contact"
      placeholder="Enter value"
      required={true}
    />
    <DateRangePickerWidget
      id="effective_date_input"
      label="Effective Dates"
      labelPlacedOnLeft={true}
    />
    <Checkbox id="experimental_input" label="Experimental" />
    <TextInput
      id="new_concept_map_uuid"
      disabled="true"
      label="UUID for new value set"
      placeholder="Enter value"
      value="{{uuid.v4()}}"
    />
    <TextInput
      id="new_concept_map_version_uuid"
      disabled="true"
      label="UUID for new version"
      placeholder="Enter value"
      value="{{uuid.v4()}}"
    />
    <Button id="button1" styleVariant="solid" text="Duplicate Value Set">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="load_concept_map_metadata"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
