<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TabbedContainerWidget
      id="tabbedcontainer1"
      tabNames={'["View Symptoms", "Add New Symptom"]'}
    >
      <ButtonWidget
        id="button1"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "load_symptoms" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        style={{ ordered: [{ "accent-background": "#979797" }] }}
        value="Reload Symptoms"
      />
      <FormWidget
        id="form1"
        disabled=""
        events={[
          {
            ordered: [
              { event: "submit" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "form1_insert_into_surveys.symptom" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        loading=""
        onSubmit="form1_insert_into_surveys.symptom"
        submitDisabled=""
      >
        <TextInputWidget
          id="textinput3"
          label="Provider Label"
          placeholder="Enter a value"
          type="text"
        />
        <TextInputWidget
          id="textinput4"
          label="Patient Label"
          placeholder="Enter a value"
          type="text"
        />
        <CheckboxWidget id="checkbox1" label="QOL symptom" />
        <TextInputWidget
          id="textinput5"
          initialValue="{{uuid.v1()}}"
          label="uuid"
          readonly="{{true}}"
          type="text"
        />
      </FormWidget>
      <TableLegacy
        id="symptom_list"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "symptom_uuid",
          "symptom_id",
          "provider_label",
          "patient_label",
          "non_clinical",
          "last_modified_date",
          "last_modified_user",
          "qol_symptom",
          "historical",
        ]}
        _columnVisibility={{
          ordered: [
            { non_clinical: true },
            { provider_label: true },
            { historical: true },
            { name: true },
            { sales: true },
            { symptom_uuid: false },
            { symptom_id: false },
            { qol_symptom: true },
            { last_modified_user: true },
            { patient_label: true },
            { id: true },
            { last_modified_date: true },
            { email: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Delete" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "delete_symptom" },
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
            { non_clinical: "" },
            { provider_label: "" },
            { historical: "" },
            { symptom_uuid: "" },
            { symptom_id: "" },
            { qol_symptom: "" },
            { last_modified_user: "" },
            { patient_label: "" },
            { last_modified_date: "" },
          ],
        }}
        columnHeaderNames={{ ordered: [{ qol_symptom: "QOL symptom" }] }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "symptom_uuid",
          "symptom_id",
          "provider_label",
          "patient_label",
          "non_clinical",
          "last_modified_date",
          "last_modified_user",
          "qol_symptom",
          "historical",
        ]}
        columnVisibility={{
          ordered: [
            { non_clinical: true },
            { provider_label: true },
            { historical: true },
            { name: true },
            { sales: true },
            { symptom_uuid: false },
            { symptom_id: false },
            { qol_symptom: true },
            { last_modified_user: true },
            { patient_label: true },
            { id: true },
            { last_modified_date: true },
            { email: true },
          ],
        }}
        columnWidths={[
          { object: { id: "symptom_id", value: 233 } },
          { object: { id: "patient_label", value: 149.75 } },
          { object: { id: "provider_label", value: 181.15625 } },
          { object: { id: "last_modified_user", value: 133.21875 } },
        ]}
        customButtonName=""
        data="{{load_symptoms.data}}"
        pageSize={9}
        showColumnBorders={true}
      />
    </TabbedContainerWidget>
  </Frame>
</App>
