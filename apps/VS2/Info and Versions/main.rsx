<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text1"
      value="**{{load_vs_metadata.data.title}}**"
      verticalAlign="center"
    />
    <TabbedContainerWidget
      id="tabbedcontainer1"
      tabNames={
        '["Versions","Metadata","Edit Metadata", "Create New Version", "Use Case"]'
      }
    >
      <FormWidget
        id="form1"
        disabled=""
        events={[
          {
            ordered: [
              { event: "submit" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "new_value_set_version" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        hidden=""
        loading=""
        onSubmit="new_value_set_version"
        overflowType="scroll"
        submitDisabled=""
      >
        <TextInput
          id="textInput4"
          disabled="true"
          formDataKey="{{ self.id}}"
          hidden="false
"
          label="uuid"
          placeholder="Enter value"
          value="{{uuid.v4()}}"
        />
        <DateRangePickerWidget id="effective_dates" label="Effective Dates" />
        <TextArea
          id="textinput2"
          autoResize={true}
          label="description"
          labelAlign="right"
          labelWrap={true}
          minLines={2}
          placeholder="Enter a value"
        />
        <NumberInput
          id="textinput3"
          currency="USD"
          decimalPlaces="0"
          label="version"
          labelAlign="right"
          labelWrap={true}
          placeholder="Enter a value"
          showClear={true}
          showSeparators={true}
          showStepper={true}
          value="1"
        />
        <SelectWidget
          id="dropdown1"
          label="status"
          placeholder="Select a value"
          value="draft"
          values="{{get_statuses.data.display}}"
        />
      </FormWidget>
      <KeyValueMap
        id="keyvaluemap1"
        data="{{load_vs_metadata.data}}"
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
        ]}
        rowVisibility={{
          ordered: [
            { contact: true },
            { a: true },
            { b: true },
            { immutable: true },
            { c: true },
            { experimental: true },
            { identifier: true },
            { name: true },
            { url: true },
            { title: true },
            { type: true },
            { uuid: true },
            { publisher: true },
            { description: true },
            { purpose: true },
          ],
        }}
      />
      <TableLegacy
        id="table1"
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
        ]}
        _columnVisibility={{
          ordered: [
            { effective_end: true },
            { created_date: true },
            { value_set_uuid: false },
            { effective_start: true },
            { name: true },
            { sales: true },
            { status: true },
            { comments: true },
            { version: true },
            { id: true },
            { uuid: false },
            { email: true },
            { description: true },
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
                  "9660a5a0-6f4b-11ed-bfef-07284b878bdd",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"value_set_version_uuid\\",\\"value\\":\\"{{table1.selectedRow.data.uuid}}\\"}]"',
              },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { effective_end: "" },
            { created_date: "" },
            { value_set_uuid: "" },
            { effective_start: "" },
            { status: "" },
            { comments: "" },
            { version: "" },
            { uuid: "" },
            { description: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { effective_start: true },
            { effective_end: true },
            { version: false },
            { status: false },
            { description: true },
            { comments: false },
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
        ]}
        columnVisibility={{
          ordered: [
            { effective_end: true },
            { created_date: true },
            { value_set_uuid: false },
            { effective_start: true },
            { name: true },
            { sales: true },
            { status: true },
            { comments: true },
            { version: true },
            { id: true },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        columnWidths={[
          { object: { id: "effective_start", value: 113 } },
          { object: { id: "effective_end", value: 99.203125 } },
          { object: { id: "version", value: 115.953125 } },
          { object: { id: "status", value: 89.609375 } },
          { object: { id: "description", value: 373.125 } },
        ]}
        customButtonName=""
        data="{{ value_set_versions.data }}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "tableBulkUpdateQuery" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={10}
        showColumnBorders={true}
      />
      <TableLegacy
        id="table2"
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
        ]}
        _columnVisibility={{
          ordered: [
            { contact: true },
            { immutable: true },
            { experimental: true },
            { identifier: true },
            { name: true },
            { sales: true },
            { url: true },
            { use_case_uuid: true },
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
            { experimental: "" },
            { identifier: "" },
            { name: "" },
            { url: "" },
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
            { contact: true },
            { immutable: true },
            { experimental: true },
            { identifier: true },
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
          "use_case_uuid",
        ]}
        columnVisibility={{
          ordered: [
            { contact: true },
            { immutable: true },
            { experimental: true },
            { identifier: true },
            { name: true },
            { sales: true },
            { url: true },
            { use_case_uuid: true },
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
        data="{{load_vs_metadata.data}}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "tableBulkUpdateTriggerAction" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={5}
        showColumnBorders={true}
      />
      <Text
        id="use_note"
        value="Assign a use case to value set"
        verticalAlign="center"
      />
      <Select
        id="select_use_case"
        allowDeselect={true}
        data="{{ use_case_dropdown.data }}"
        label="use case"
        labels="{{item.name}}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{item.uuid}}"
      />
      <Button id="assign_use_case" styleVariant="solid" text="assign use case">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="set_use_case"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </TabbedContainerWidget>
  </Frame>
</App>
