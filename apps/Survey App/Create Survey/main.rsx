<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TabbedContainerWidget
      id="tabbedcontainer1"
      events={[
        {
          ordered: [
            { event: "change" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "load_surveys" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      tabNames={'["View Surveys", "Create Survey"]'}
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
              { pluginId: "form1_insert_into_surveys.survey" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        loading=""
        onSubmit="form1_insert_into_surveys.survey"
        scroll={true}
        submitDisabled=""
      >
        <SelectWidget
          id="survey_type"
          label="Survey Type"
          placeholder="Select a value"
          values={'["Baseline", "Subsequent"]'}
        />
        <TextInputWidget
          id="textinput2"
          label="name"
          placeholder="Computer friendly name"
          tooltipText="required; no capitalization and no spaces; not editable once created "
          type="text"
        />
        <TextInputWidget
          id="textinput3"
          label="title"
          placeholder="Human friendly title"
          tooltipText="required; capitalization and spaces allowed; not editable once created"
          type="text"
        />
        <SelectWidget
          id="dropdown1"
          label="status"
          tooltipText="required; not editable once selected "
          values={'["draft", "active", "retired", "unknown"]'}
        />
        <CheckboxWidget
          id="checkbox1"
          label="experimental"
          placeholder="Enter a value"
        />
        <TextInputWidget
          id="textinput4"
          label="description"
          placeholder="Enter a value"
          tooltipText="not required"
          type="text"
        />
        <TextInputWidget
          id="new_uuid"
          events={[]}
          initialValue="{{uuid.v1()}}"
          label="UUID"
          readonly="{{true}}"
          type="text"
        />
      </FormWidget>
      <TableLegacy
        id="table1"
        _columns={[
          "title",
          "name",
          "uuid",
          "status",
          "experimental",
          "description",
          "last_modified_date",
          "last_modified_user",
        ]}
        _columnVisibility={{
          ordered: [
            { experimental: true },
            { name: true },
            { sales: true },
            { status: true },
            { last_modified_user: false },
            { title: true },
            { id: true },
            { last_modified_date: false },
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
              { actionButtonText: "Edit" },
              { actionButtonType: "openInternalUrl" },
              { actionButtonQuery: "" },
              {
                actionButtonInternalUrlPath:
                  "210c1e2c-0a9f-11ec-94e9-5fa633c4b7ef",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{table1.selectedRow.data.uuid}}\\"}]"',
              },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "Delete" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "delete_survey" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "Duplicate" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "generate_uuid_for_duplicate_survey" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "Manage Alert Tiers" },
              { actionButtonType: "openInternalUrl" },
              { actionButtonQuery: "" },
              {
                actionButtonInternalUrlPath:
                  "cb6b541c-0c13-11ec-9a40-fb28775ac10c",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"survey_uuid\\",\\"value\\":\\"{{table1.selectedRow.data.uuid}}\\"}]"',
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
            { uuid: "" },
            { name: "" },
            { title: "" },
            { status: "" },
            { experimental: "" },
            { description: "" },
            { last_modified_date: "" },
            { last_modified_user: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { title: true },
            { name: true },
            { status: true },
            { description: true },
            { experimental: true },
          ],
        }}
        columns={[
          "title",
          "name",
          "uuid",
          "status",
          "experimental",
          "description",
          "last_modified_date",
          "last_modified_user",
        ]}
        columnVisibility={{
          ordered: [
            { experimental: true },
            { name: true },
            { sales: true },
            { status: true },
            { last_modified_user: false },
            { title: true },
            { id: true },
            { last_modified_date: false },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        columnWidths={[
          { object: { id: "status", value: 84.6875 } },
          { object: { id: "experimental", value: 91.703125 } },
          { object: { id: "title", value: 256.140625 } },
          { object: { id: "name", value: 175.890625 } },
          { object: { id: "last_modified_user", value: 106.5625 } },
          { object: { id: "description", value: 185.890625 } },
        ]}
        customButtonName=""
        data="{{ load_surveys.data }}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "survey_update" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={26}
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
          "title",
          "status",
          "experimental",
          "description",
          "last_modified_date",
          "last_modified_user",
        ]}
        _columnVisibility={{
          ordered: [
            { experimental: true },
            { name: true },
            { sales: true },
            { status: true },
            { last_modified_user: true },
            { title: true },
            { id: true },
            { last_modified_date: true },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { uuid: "" },
            { name: "" },
            { title: "" },
            { status: "" },
            { experimental: "" },
            { description: "" },
            { last_modified_date: "" },
            { last_modified_user: "" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "uuid",
          "title",
          "status",
          "experimental",
          "description",
          "last_modified_date",
          "last_modified_user",
        ]}
        columnVisibility={{
          ordered: [
            { experimental: true },
            { name: true },
            { sales: true },
            { status: true },
            { last_modified_user: true },
            { title: true },
            { id: true },
            { last_modified_date: true },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        customButtonName=""
        data="{{ load_surveys.data }}"
        pageSize={6}
        showColumnBorders={true}
      />
    </TabbedContainerWidget>
  </Frame>
</App>
