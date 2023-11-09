<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TabbedContainerWidget
      id="tabbedcontainer1"
      tabNames={'["View Specific Answers", "Add New Specific Answers"]'}
    >
      <ButtonWidget
        id="button1"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "load_sa" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        style={{ ordered: [{ "accent-background": "#979797" }] }}
        value="Reload Specific Answers"
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
              { pluginId: "form1_insert_into_surveys.specific_answer" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        loading=""
        onSubmit="form1_insert_into_surveys.specific_answer"
        submitDisabled=""
      >
        <TextInputWidget
          id="textinput1"
          label="specific_answer_label"
          placeholder="Enter a value"
          type="text"
        />
        <TextInputWidget
          id="textinput2"
          label="generic_answer_display"
          placeholder="Enter a value"
          type="text"
        />
        <TextInputWidget
          id="textinput3"
          enableValidationType={true}
          label="clinical_severity_order"
          placeholder="Enter a value"
          type="number"
          validationType="float"
        />
        <TextInputWidget
          id="textinput5"
          label="alert_tier"
          placeholder="Enter a value"
          type="text"
        />
      </FormWidget>
      <TableLegacy
        id="sa_list"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "symptom_uuid",
          "symptom_id",
          "provider_label",
          "patient_label",
          "specific_answer_uuid",
          "specific_answer_label",
          "generic_answer_display",
          "clinical_severity_order",
          "next_question",
          "alert_tier",
          "last_modified_date",
          "last_modified_user",
          "next_question_slug",
          "expected",
        ]}
        _columnVisibility={{
          ordered: [
            { specific_answer_label: true },
            { alert_tier: true },
            { provider_label: true },
            { generic_answer_display: true },
            { name: true },
            { sales: true },
            { specific_answer_uuid: false },
            { symptom_uuid: false },
            { symptom_id: false },
            { next_question: true },
            { last_modified_user: true },
            { clinical_severity_order: true },
            { expected: true },
            { next_question_slug: true },
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
              { actionButtonQuery: "delete_sa" },
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
            { specific_answer_label: "" },
            { alert_tier: "" },
            { provider_label: "" },
            { generic_answer_display: "" },
            { specific_answer_uuid: "" },
            { symptom_uuid: "" },
            { symptom_id: "" },
            { next_question: "" },
            { last_modified_user: "" },
            { clinical_severity_order: "" },
            { expected: "" },
            { next_question_slug: "" },
            { patient_label: "" },
            { last_modified_date: "" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "symptom_uuid",
          "symptom_id",
          "provider_label",
          "patient_label",
          "specific_answer_uuid",
          "specific_answer_label",
          "generic_answer_display",
          "clinical_severity_order",
          "next_question",
          "alert_tier",
          "last_modified_date",
          "last_modified_user",
          "next_question_slug",
          "expected",
        ]}
        columnVisibility={{
          ordered: [
            { specific_answer_label: true },
            { alert_tier: true },
            { provider_label: true },
            { generic_answer_display: true },
            { name: true },
            { sales: true },
            { specific_answer_uuid: false },
            { symptom_uuid: false },
            { symptom_id: false },
            { next_question: true },
            { last_modified_user: true },
            { clinical_severity_order: true },
            { expected: true },
            { next_question_slug: true },
            { patient_label: true },
            { id: true },
            { last_modified_date: true },
            { email: true },
          ],
        }}
        columnWidths={[
          { object: { id: "specific_answer_label", value: 332.328125 } },
          { object: { id: "generic_answer_display", value: 169.390625 } },
          { object: { id: "clinical_severity_order", value: 143.890625 } },
        ]}
        customButtonName=""
        data="{{load_sa.data}}"
        pageSize={11}
        showColumnBorders={true}
      />
    </TabbedContainerWidget>
  </Frame>
</App>
