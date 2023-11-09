<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TabbedContainerWidget
      id="tabbedcontainer1"
      tabNames={'["Browse Question Groups", "Create New Question Group"]'}
    >
      <FormWidget
        id="form1"
        clearFormAfterSubmit={true}
        disabled=""
        events={[
          {
            ordered: [
              { event: "submit" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "new_question_group" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        loading=""
        onSubmit="new_question_group"
        submitDisabled=""
      >
        <TextInputWidget
          id="title_input"
          label="Title"
          placeholder="Enter a value"
          type="text"
        />
        <TextInputWidget
          id="description_input"
          label="Description"
          placeholder="Enter a value"
          type="text"
        />
        <SelectWidget
          id="symptom_dropdown"
          label="Symptoms"
          labels="{{load_symptoms.data.provider_label}}"
          placeholder="Select a value"
          values="{{load_symptoms.data.symptom_uuid}}"
        />
      </FormWidget>
      <TableLegacy
        id="table1"
        _columns={[
          "title",
          "uuid",
          "symptom_uuid",
          "description",
          "symptom_id",
          "provider_label",
          "patient_label",
          "last_modified_date",
          "last_modified_user",
          "qol_symptom",
          "status",
        ]}
        _columnVisibility={{
          ordered: [
            { provider_label: true },
            { name: true },
            { sales: true },
            { symptom_uuid: true },
            { symptom_id: true },
            { status: true },
            { qol_symptom: true },
            { last_modified_user: true },
            { title: true },
            { patient_label: true },
            { id: true },
            { last_modified_date: true },
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
              { actionButtonText: "Edit Question Group" },
              { actionButtonType: "openInternalUrl" },
              { actionButtonQuery: "" },
              {
                actionButtonInternalUrlPath:
                  "c20b1d76-0a9c-11ec-81b0-d370c741a3b7",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{currentRow.uuid}}\\"}]"',
              },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "Delete Question Group" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "delete_question_group" },
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
            { provider_label: "" },
            { symptom_uuid: "" },
            { symptom_id: "" },
            { status: "" },
            { qol_symptom: "" },
            { last_modified_user: "" },
            { title: "" },
            { patient_label: "" },
            { last_modified_date: "" },
            { uuid: "" },
            { description: "" },
          ],
        }}
        columnEditable={{ ordered: [{ title: true }, { description: true }] }}
        columnHeaderNames={{
          ordered: [
            { provider_label: "Symptom" },
            { title: "Title" },
            { description: "Description" },
          ],
        }}
        columns={[
          "title",
          "uuid",
          "symptom_uuid",
          "description",
          "symptom_id",
          "provider_label",
          "patient_label",
          "last_modified_date",
          "last_modified_user",
          "qol_symptom",
          "status",
        ]}
        columnVisibility={{
          ordered: [
            { provider_label: true },
            { name: true },
            { sales: true },
            { symptom_uuid: true },
            { symptom_id: true },
            { status: true },
            { qol_symptom: true },
            { last_modified_user: true },
            { title: true },
            { patient_label: true },
            { id: true },
            { last_modified_date: true },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        customButtonName=""
        data="{{ load_question_groups.data }}"
        pageSize={23}
        showColumnBorders={true}
      />
    </TabbedContainerWidget>
  </Frame>
</App>
