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
      { headerBackground: "rgb(188, 204, 220)" },
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
      <Option id="d80dd" value="Tab 1" />
      <Option id="5265e" value="Tab 2" />
      <Option id="eb3b4" value="Tab 3" />
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
  <View id="0" label="Browse Value Sets" viewKey={0}>
    <TextInput
      id="filter"
      label="Filter Title, Description or uuid"
      placeholder="Enter value"
      showClear={true}
    />
    <TableLegacy
      id="vs_metadata_table"
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
        "use_case_uuid",
        "use_case_name",
        "hyperlink",
        "use_case",
        "use_case_link",
      ]}
      _columnVisibility={{
        ordered: [
          { contact: false },
          { immutable: false },
          { use_case_name: false },
          { hyperlink: true },
          { experimental: false },
          { use_case: false },
          { identifier: false },
          { name: false },
          { sales: true },
          { url: false },
          { use_case_link: false },
          { use_case_uuid: false },
          { title: true },
          { type: false },
          { id: true },
          { uuid: false },
          { publisher: false },
          { email: true },
          { description: true },
          { purpose: false },
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
                "4f31f1c8-2228-11ec-90d7-a387d41c775c",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{vs_metadata_table.selectedRow.data.uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { contact: "" },
          { immutable: "" },
          { use_case_name: "" },
          { hyperlink: "" },
          { experimental: "" },
          { use_case: "" },
          { identifier: "" },
          { name: "" },
          { url: "" },
          { use_case_link: "" },
          { use_case_uuid: "" },
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
          { name: false },
          { contact: true },
          { description: false },
          { immutable: true },
          { experimental: true },
          { purpose: true },
          { type: true },
        ],
      }}
      columnHeaderNames={{
        ordered: [{ title: "Title" }, { description: "Description" }],
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
        "use_case_uuid",
        "use_case_name",
        "hyperlink",
        "use_case",
        "use_case_link",
      ]}
      columnVisibility={{
        ordered: [
          { contact: false },
          { immutable: false },
          { use_case_name: false },
          { hyperlink: true },
          { experimental: false },
          { use_case: false },
          { identifier: false },
          { name: false },
          { sales: true },
          { url: false },
          { use_case_link: false },
          { use_case_uuid: false },
          { title: true },
          { type: false },
          { id: true },
          { uuid: false },
          { publisher: false },
          { email: true },
          { description: true },
          { purpose: false },
        ],
      }}
      columnWidths={[
        { object: { id: "contact", value: 77 } },
        { object: { id: "immutable", value: 95 } },
        { object: { id: "experimental", value: 108.75 } },
        { object: { id: "name", value: 272.40625 } },
        { object: { id: "title", value: 283.8125 } },
        { object: { id: "__retool__action_list", value: 160.09375 } },
        { object: { id: "description", value: 476.09375 } },
      ]}
      customButtonName=""
      data="{{load_value_sets.data}}"
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
      pageSize={15}
      showColumnBorders={true}
      style={{
        ordered: [
          { headerBackground: "rgba(217, 226, 236, 0.5)" },
          { headerText: "rgb(130, 154, 177)" },
          { toolbarText: "rgb(130, 154, 177)" },
        ],
      }}
    />
    <KeyValueMap
      id="keyValue2"
      data="{{vs_metadata_table.selectedRow.data}}"
      prevRowFormats={{ ordered: [] }}
      prevRowMappers={{ ordered: [] }}
      rows={[
        "a",
        "b",
        "c",
        "title",
        "name",
        "description",
        "purpose",
        "publisher",
        "contact",
        "uuid",
        "immutable",
        "experimental",
        "type",
        "use_case_link",
        "use_case_name",
        "use_case_uuid",
      ]}
      rowVisibility={{
        ordered: [
          { contact: true },
          { a: true },
          { b: true },
          { immutable: true },
          { use_case_name: true },
          { c: true },
          { experimental: true },
          { name: true },
          { use_case_link: true },
          { use_case_uuid: false },
          { title: true },
          { type: true },
          { uuid: true },
          { publisher: true },
          { description: true },
          { purpose: true },
        ],
      }}
    />
    <Text id="text14" value="**Primary Use Case:**" verticalAlign="center" />
    <Text
      id="text15"
      value="{{processPrimary.data[0]}}"
      verticalAlign="center"
    />
    <ListView
      id="listView1"
      instances="{{processUseCases.data.length}}"
      style={{ ordered: [{ "primary-surface": "rgba(240, 244, 248, 0.9)" }] }}
    >
      <Text
        id="text16"
        hidden="{{i!=0}}"
        value="**Secondary Use Cases:**"
        verticalAlign="center"
      />
      <Divider id="divider5" />
      <Text
        id="text17"
        hidden=""
        value="{{processUseCases.data[i]}}"
        verticalAlign="center"
      />
    </ListView>
    <Text
      id="text4"
      value="**Value Set Title Synonyms**"
      verticalAlign="center"
    />
    <TableLegacy
      id="synonym_table"
      _columns={[
        "uuid",
        "name",
        "title",
        "publisher",
        "contact",
        "description",
        "immutable",
        "experimental",
        "purpose",
        "type",
        "context",
        "synonym",
      ]}
      _columnVisibility={{
        ordered: [
          { contact: true },
          { immutable: true },
          { experimental: true },
          { name: true },
          { context: true },
          { title: true },
          { type: true },
          { uuid: false },
          { synonym: true },
          { publisher: true },
          { description: true },
          { purpose: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "delete_synonym" },
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
          { contact: "" },
          { immutable: "" },
          { experimental: "" },
          { name: "" },
          { context: "" },
          { title: "" },
          { type: "" },
          { uuid: "" },
          { synonym: "" },
          { publisher: "" },
          { description: "" },
          { purpose: "" },
        ],
      }}
      columns={[
        "uuid",
        "name",
        "title",
        "publisher",
        "contact",
        "description",
        "immutable",
        "experimental",
        "purpose",
        "type",
        "context",
        "synonym",
      ]}
      columnVisibility={{
        ordered: [
          { contact: true },
          { immutable: true },
          { experimental: true },
          { name: true },
          { context: true },
          { title: true },
          { type: true },
          { uuid: false },
          { synonym: true },
          { publisher: true },
          { description: true },
          { purpose: true },
        ],
      }}
      columnWidths={[
        { object: { id: "context", value: 94.546875 } },
        { object: { id: "synonym", value: 268.5625 } },
      ]}
      customButtonName=""
      data="{{load_synonyms.data}}"
      overflowType="scroll"
      pageSize={3}
      showColumnBorders={true}
      style={{
        ordered: [
          { headerBackground: "rgba(217, 226, 236, 0.6)" },
          { headerText: "rgb(130, 154, 177)" },
          { toolbarText: "rgb(130, 154, 177)" },
        ],
      }}
    />
    <Include src="./modal1.rsx" />
  </View>
  <View id="1" label="Create New Value Set" viewKey={1}>
    <Form
      id="form1"
      disabled=""
      disableSubmit=""
      heightType="fixed"
      hidden={null}
      hoistFetching={true}
      loading=""
      maintainSpaceWhenHidden={null}
      overflowType="hidden"
      requireValidation={true}
      showBody={true}
      showInEditor={null}
      style={{ ordered: [{ background: "rgb(240, 244, 248)" }] }}
      styleContext={{ ordered: [{ textDark: "rgb(34, 34, 34)" }] }}
    >
      <Body>
        <Text id="text6" value="**New Value Set**" verticalAlign="center" />
        <Divider id="divider1" />
        <TextInput
          id="title_input"
          disabled=""
          hidden={null}
          label="Title"
          labelAlign="right"
          labelCaption="(human-readable)"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          placeholder="Enter a value"
          required={true}
          showClear={true}
          showInEditor={null}
        />
        <TextInput
          id="name_input"
          label="Name"
          labelAlign="right"
          labelCaption="(machine-readable)"
          maxLength="254"
          pattern="^\w+$"
          patternType="regex"
          placeholder="Enter value"
          required={true}
          showCharacterCount={true}
          value="{{title_input.value.toLowerCase().replace(/[^\w]+/g, '')}}"
        />
        <TextInput
          id="value_set_description"
          disabled=""
          hidden={null}
          label="Description"
          labelAlign="right"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          placeholder="What content will be in this value set?"
          required={true}
          showClear={true}
          showInEditor={null}
        />
        <TextInput
          id="purpose_input"
          disabled=""
          hidden={null}
          label="Purpose"
          labelAlign="right"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          placeholder="What is the use case for this value set?"
          required={true}
          showClear={true}
          showInEditor={null}
        />
        <SelectWidget
          id="type_dropdown"
          label="Type"
          labels="['Intensional']"
          placeholder="Select a value"
          required={true}
          value="'intensional'"
          values="['intensional']"
        />
        <TextInput
          id="contact_input"
          disabled=""
          hidden={null}
          label="Contact"
          labelAlign="right"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          required={true}
          showClear={true}
          showInEditor={null}
          value="{{current_user.firstName}} {{current_user.lastName}}"
        />
        <CheckboxWidget
          id="experimental_checkbox"
          label="Experimental (Not For Production)"
          placeholder="Enter a value"
        />
        <TextInput
          id="publisher"
          disabled="true"
          hidden={null}
          label="Publisher"
          labelAlign="right"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          placeholder="Enter a value"
          readOnly=""
          showClear={true}
          showInEditor={null}
          value="Project Ronin"
        />
        <Include src="./container1.rsx" />
        <Spacer id="spacer1" />
        <Text id="text7" value="**Version 1**" verticalAlign="center" />
        <Divider id="divider2" />
        <TextInput
          id="version_description_input"
          disabled=""
          hideLabel={false}
          label="Version Description"
          placeholder="Enter a description for the initial version"
          required={true}
          value="Initial version"
        />
        <Button id="button4" styleVariant="solid" text="Create New Value Set">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="create_value_set_and_version_one"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
    </Form>
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </View>
  <View id="2" label="Duplicate Existing Value Set" viewKey={2}>
    <Text
      id="text1"
      value="**This form allows you to create a new value set by copying an existing value set and renaming it.**"
      verticalAlign="center"
    />
    <Select
      id="value_set_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_all_value_sets.data.uuid}}"
      deprecatedLabels="{{load_all_value_sets.data.name}}"
      label="Select an existing value set to duplicate"
      labelCaption="*the most recenct active version will be duplicated"
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
      data="{{load_vs_metadata.data}}"
      prevRowFormats={{ ordered: [] }}
      prevRowMappers={{ ordered: [{ effective_start: "" }] }}
      rowMappers={{ ordered: [{ effective_start: "" }] }}
      rows={[
        "a",
        "b",
        "c",
        "uuid",
        "effective_start",
        "effective_end",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "version",
        "comments",
        "error",
        "message",
        "position",
        "queryExecutionMetadata",
        "source",
        "name",
        "title",
        "publisher",
        "contact",
        "immutable",
        "experimental",
        "purpose",
        "type",
        "use_case_uuid",
      ]}
      rowVisibility={{
        ordered: [
          { contact: true },
          { a: true },
          { b: true },
          { immutable: true },
          { c: true },
          { effective_end: true },
          { created_date: true },
          { value_set_uuid: true },
          { message: true },
          { experimental: true },
          { error: true },
          { position: true },
          { effective_start: true },
          { name: true },
          { use_case_uuid: true },
          { status: true },
          { comments: true },
          { version: true },
          { title: true },
          { type: true },
          { source: true },
          { uuid: true },
          { publisher: true },
          { description: true },
          { purpose: true },
          { queryExecutionMetadata: true },
        ],
      }}
      style={{
        ordered: [
          { "primary-background": "rgb(217, 226, 236)" },
          { "primary-foreground": "rgb(130, 154, 177)" },
        ],
      }}
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
      id="dup_description_input"
      label="Description (clinical explanation of value set contents)"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="dup_purpose_input"
      label="Purpose (business reason for value set)"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="dup_contact_input"
      label="Contact"
      placeholder="Enter value"
      required={true}
      value="{{current_user.firstName}} {{current_user.lastName}}"
    />
    <TextInput
      id="dup_version_description"
      label="Version Description*"
      placeholder="Enter value"
    />
    <Button id="button3" styleVariant="solid" text="Duplicate">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="duplication_api"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
