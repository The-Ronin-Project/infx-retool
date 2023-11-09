<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TabbedContainerWidget
      id="tabbedcontainer1"
      tabNames={'["List Questions","Create New Question"]'}
    >
      <TableLegacy
        id="question_list"
        _columns={[
          "question_text",
          "question_uuid",
          "last_modified_date",
          "last_modified_user",
          "historical_question",
          "historical_question_display",
          "not_expected_reason",
          "present_most_severe_first",
          "provider_sees",
          "question_characteristic_uuid",
          "requires_question",
          "slug",
          "specific_answer_uuids",
          "symptom_uuids",
          "future_question",
          "Custom Column 1",
        ]}
        _columnVisibility={{
          ordered: [
            { survey_uuid: true },
            { symptom_uuids: false },
            { future_question: true },
            { specific_answer_uuids: false },
            { question_text: true },
            { question_characteristic_uuid: false },
            { position: true },
            { name: true },
            { slug: false },
            { sales: true },
            { provider_sees: true },
            { question_uuid: false },
            { "Custom Column 1": true },
            { requires_question: false },
            { last_modified_user: false },
            { id: true },
            { last_modified_date: false },
            { historical_question: false },
            { email: true },
            { present_most_severe_first: false },
            { historical_question_display: false },
            { not_expected_reason: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnColors={{
          ordered: [
            { survey_uuid: "" },
            { symptom_uuids: "" },
            { future_question: "" },
            { specific_answer_uuids: "" },
            { question_text: "" },
            { question_characteristic_uuid: "" },
            { position: "" },
            { slug: "" },
            { provider_sees: "" },
            { question_uuid: "" },
            { requires_question: "" },
            { last_modified_user: "" },
            { last_modified_date: "" },
            { historical_question: "" },
            { present_most_severe_first: "" },
            { historical_question_display: "" },
            { not_expected_reason: "" },
          ],
        }}
        columnHeaderNames={{ ordered: [{ "Custom Column 1": "In Survey" }] }}
        columnMappers={{
          ordered: [
            {
              "Custom Column 1":
                "{{load_survey_questions.data.question_uuid.includes(currentRow.question_uuid)}}",
            },
            { symptom_uuids: "" },
          ],
        }}
        columns={[
          "question_text",
          "question_uuid",
          "last_modified_date",
          "last_modified_user",
          "historical_question",
          "historical_question_display",
          "not_expected_reason",
          "present_most_severe_first",
          "provider_sees",
          "question_characteristic_uuid",
          "requires_question",
          "slug",
          "specific_answer_uuids",
          "symptom_uuids",
          "future_question",
          "Custom Column 1",
        ]}
        columnVisibility={{
          ordered: [
            { survey_uuid: true },
            { symptom_uuids: false },
            { future_question: true },
            { specific_answer_uuids: false },
            { question_text: true },
            { question_characteristic_uuid: false },
            { position: true },
            { name: true },
            { slug: false },
            { sales: true },
            { provider_sees: true },
            { question_uuid: false },
            { "Custom Column 1": true },
            { requires_question: false },
            { last_modified_user: false },
            { id: true },
            { last_modified_date: false },
            { historical_question: false },
            { email: true },
            { present_most_severe_first: false },
            { historical_question_display: false },
            { not_expected_reason: false },
          ],
        }}
        columnWidths={[{ object: { id: "question_text", value: 586 } }]}
        customButtonName=""
        data="{{ load_all_questions.data}}"
        pageSize={48}
        showColumnBorders={true}
      />
      <TextInputWidget
        id="search_field"
        label="Search"
        placeholder="Enter query"
        tooltipText="Search by question text, or by symptom provider label/patient label "
        type="text"
      />
      <Text
        id="text1"
        style={{ ordered: [] }}
        value="Editing Survey: <strong>{{load_survey_data.data.title}}</strong>"
        verticalAlign="center"
      />
      <Wizard
        id="wizard1"
        currentStep="VGcbjman1"
        hideResetButton={true}
        initialStep="VGcbjman1"
        onStepChange="index_new_question"
        steps={{
          ordered: [
            {
              VGcbjman1: {
                ordered: [
                  { name: "Create Question" },
                  { navButtons: [] },
                  { visualizationXCoordinate: 1096 },
                  { visualizationYCoordinate: 472 },
                ],
              },
            },
            {
              Nzux9bLwz: {
                ordered: [
                  { name: "Pick Symptom" },
                  {
                    navButtons: [
                      {
                        ordered: [
                          { buttonText: "Next" },
                          { buttonType: "goToStep" },
                          { buttonGoToStep: "jXZWSpNW_" },
                          { buttonEnabled: "{{true}}" },
                          { triggerButtonIf: "{{false}}" },
                        ],
                      },
                    ],
                  },
                  { visualizationXCoordinate: 776 },
                  { visualizationYCoordinate: 600 },
                  { isVirtual: false },
                  { onEnterQuery: "" },
                  { hideTitle: false },
                ],
              },
            },
            {
              jXZWSpNW_: {
                ordered: [
                  { name: "Pick Question Characteristic" },
                  {
                    navButtons: [
                      {
                        ordered: [
                          { buttonText: "Next" },
                          { buttonType: "goToStep" },
                          { buttonGoToStep: "IKXRcoND7" },
                          { buttonEnabled: "{{true}}" },
                          { triggerButtonIf: "{{false}}" },
                        ],
                      },
                    ],
                  },
                  { visualizationXCoordinate: 1000 },
                  { visualizationYCoordinate: 600 },
                  { isVirtual: false },
                  { onEnterQuery: "" },
                  { hideTitle: false },
                ],
              },
            },
            {
              IKXRcoND7: {
                ordered: [
                  { name: "Requires Question (Optional)" },
                  {
                    navButtons: [
                      {
                        ordered: [
                          { buttonText: "Next" },
                          { buttonType: "goToStep" },
                          { buttonGoToStep: "EJL_mwHKy" },
                          { buttonEnabled: "{{true}}" },
                          { triggerButtonIf: "{{false}}" },
                        ],
                      },
                    ],
                  },
                  { visualizationXCoordinate: 1192 },
                  { visualizationYCoordinate: 600 },
                  { isVirtual: false },
                  { onEnterQuery: "" },
                  { hideTitle: false },
                ],
              },
            },
            {
              EJL_mwHKy: {
                ordered: [
                  { name: "Create Answers" },
                  {
                    navButtons: [
                      {
                        ordered: [
                          { buttonText: "Finish" },
                          { buttonType: "goToStep" },
                          { buttonGoToStep: "oiD5B4wFM" },
                          { buttonEnabled: "{{true}}" },
                          { triggerButtonIf: "{{false}}" },
                        ],
                      },
                    ],
                  },
                  { visualizationXCoordinate: 1384 },
                  { visualizationYCoordinate: 600 },
                  { isVirtual: false },
                  { onEnterQuery: "" },
                  { hideTitle: false },
                ],
              },
            },
            {
              oiD5B4wFM: {
                ordered: [
                  { name: "Finished!" },
                  { navButtons: [] },
                  { visualizationXCoordinate: 1592 },
                  { visualizationYCoordinate: 600 },
                  { isVirtual: false },
                  { onEnterQuery: "" },
                  { hideTitle: false },
                ],
              },
            },
          ],
        }}
      >
        <FormWidget
          id="create_question_form"
          disabled=""
          events={[
            {
              ordered: [
                { event: "submit" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "new_survey_question" },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          loading=""
          onSubmit="new_survey_question"
          scroll={true}
          submitDisabled="{{textinput3.value === ''}}"
        >
          <TextInputWidget
            id="textinput3"
            label="question_text"
            placeholder="Enter a value"
            tooltipText="Patient facing question text presented in the mobile app after a symptom is selected.
"
            type="text"
          />
          <TextInputWidget
            id="textinput5"
            hidden="true"
            label="slug"
            placeholder="Enter a value"
            tooltipText="Computer readable identifier unique to each question."
            type="text"
          />
          <TextInputWidget
            id="textinput2"
            label="provider_sees"
            placeholder="Enter a value"
            tooltipText="Clinician facing response in the triage dash indicating why the symptom alerted.
"
            type="text"
          />
          <TextInputWidget
            id="textinput1"
            label="not_expected_reason"
            placeholder="Enter a value"
            tooltipText="Patient facing response in the app alert screen indicating why the symptom alerted.

"
            type="text"
          />
          <CheckboxWidget
            id="checkbox1"
            events={[
              {
                ordered: [
                  { event: "change" },
                  { type: "datasource" },
                  { method: "trigger" },
                  { pluginId: "load_survey_questions" },
                  { params: { ordered: [] } },
                  { waitType: "debounce" },
                  { waitMs: "0" },
                ],
              },
            ]}
            label="present_most_severe_first; Indicates how the question answers should be displayed in the mobile app by using clinical severity. Most questions will have this selected (ex: yes/no questions should always display yes first so as not to confuse the patient) but some should present in increasing severity where it wouldn’t make sense to list the most severe outcome first (ex: severity questions list mild first vs very severe first).
"
            placeholder="Enter a value"
          />
          <CheckboxWidget
            id="checkbox2"
            label="future_question; A question we want to ask in the future when functionality supports it.
"
            placeholder="Enter a value"
          />
          <TextInputWidget
            id="new_question_uuid"
            initialValue="{{uuid.v1()}}"
            label="question_uuid"
            placeholder="Enter a value"
            readonly="{{true}}"
            type="text"
          />
        </FormWidget>
        <FormWidget
          id="form1"
          disabled=""
          events={[
            {
              ordered: [
                { event: "submit" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "create_new_answer" },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          loading=""
          onSubmit="create_new_answer"
          scroll={true}
          submitDisabled=""
        >
          <TextInputWidget
            id="new_answer_uuid"
            initialValue="{{uuid.v1()}}"
            label="specific_answer_uuid"
            placeholder="Enter a value"
            readonly="{{true}}"
            type="text"
          />
          <TextInputWidget
            id="textinput9"
            enableValidationType={true}
            label="clinical_severity_order"
            placeholder="Enter a value"
            tooltipText="A numerical assignment of symptom severity where 1 is the lowest severity. Numbers with decimal places indicate similar clinical severity but are used to order the answers in the app.
"
            type="number"
            validationType="integer"
          />
          <TextInputWidget
            id="textinput7"
            label="specific_answer_label"
            placeholder="Enter a value"
            tooltipText="A computer readable identifier unique for each possible question and answer combination
"
            type="text"
          />
          <SelectWidget
            id="alert_tier_select"
            label="Alert Tier"
            placeholder="Select a value"
            values={'["Low", "Intermediate", "High", "Extreme"]'}
          />
          <TextInputWidget
            id="textinput8"
            label="generic_answer_display"
            placeholder="Enter a value"
            tooltipText="A patient facing answer that is shared among more than one question (ex: yes, mild, etc)
"
            type="text"
          />
          <CheckboxWidget
            id="checkbox3"
            label="expected; used to indicate whether this specific answer is expected (no alert triggered) or unexpected (triggers an alert)"
            placeholder="Enter a value"
          />
        </FormWidget>
        <Text
          id="text3"
          style={{ ordered: [] }}
          value="Current symptoms assigned to question: {{load_new_question.data.provider_label}}"
          verticalAlign="center"
        />
        <Text
          id="text4"
          style={{ ordered: [] }}
          value="**Congratulations {{ current_user.firstName || 'friend' }}, you created a new question!**"
          verticalAlign="center"
        />
        <Text
          id="text5"
          style={{ ordered: [] }}
          value="**Select an existing question characteristic, or create a new one**"
          verticalAlign="center"
        />
        <Text
          id="text6"
          disableMarkdown={true}
          style={{ ordered: [] }}
          value={
            'This is a mechanism to force the question presentation order; for example, the question "Have you lost more than 10% of your body weight?" requires the question "Have you lost weight due to your nausea?" to be presented before it. '
          }
          verticalAlign="center"
        />
        <ButtonWidget
          id="button3"
          events={[
            {
              ordered: [
                { event: "click" },
                { type: "util" },
                { method: "openApp" },
                { pluginId: "" },
                {
                  params: {
                    ordered: [
                      { uuid: "27ded55a-f0aa-11eb-bbe6-73db106b071e" },
                      { options: { ordered: [{ newTab: true }] } },
                    ],
                  },
                },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          value="Create New Symptom"
        />
        <ButtonWidget
          id="button4"
          events={[
            {
              ordered: [
                { event: "click" },
                { type: "util" },
                { method: "openApp" },
                { pluginId: "" },
                {
                  params: {
                    ordered: [
                      { uuid: "30462a6e-f0ae-11eb-8650-4bef0f3f58cf" },
                      { options: { ordered: [{ newTab: true }] } },
                    ],
                  },
                },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          value="Create New Question Characteristic"
        />
        <ButtonWidget
          id="button2"
          events={[
            {
              ordered: [
                { event: "click" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "reset_new_question_form" },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          value="Create Another Question"
        />
        <TableLegacy
          id="qc_table"
          _columns={[
            "id",
            "name",
            "email",
            "sales",
            "question_characteristic_uuid",
            "question_characteristic",
            "question_characteristic_order",
            "last_modified_date",
            "last_modified_user",
          ]}
          _columnVisibility={{
            ordered: [
              { question_characteristic_order: true },
              { question_characteristic_uuid: false },
              { name: true },
              { sales: true },
              { question_characteristic: true },
              { last_modified_user: false },
              { id: true },
              { last_modified_date: false },
              { email: true },
            ],
          }}
          _unfilteredSelectedIndex=""
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Select" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "assign_qc_to_question" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                {
                  actionButtonDisabled:
                    "{{load_new_question.data.question_characteristic_uuid.includes(currentRow.question_characteristic_uuid)}}",
                },
              ],
            },
          ]}
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { question_characteristic_uuid: "" },
              {
                question_characteristic:
                  "{{load_new_question.data.question_characteristic_uuid.includes(currentRow.question_characteristic_uuid) ? 'green' : 'white'}}",
              },
              { question_characteristic_order: "" },
              { last_modified_date: "" },
              { last_modified_user: "" },
            ],
          }}
          columns={[
            "id",
            "name",
            "email",
            "sales",
            "question_characteristic_uuid",
            "question_characteristic",
            "question_characteristic_order",
            "last_modified_date",
            "last_modified_user",
          ]}
          columnVisibility={{
            ordered: [
              { question_characteristic_order: true },
              { question_characteristic_uuid: false },
              { name: true },
              { sales: true },
              { question_characteristic: true },
              { last_modified_user: false },
              { id: true },
              { last_modified_date: false },
              { email: true },
            ],
          }}
          customButtonName=""
          data="{{ search_question_characteristic.data }}"
          pageSize={13}
          showColumnBorders={true}
        />
        <TextInputWidget
          id="requires_question_search_input"
          label="Search Questions"
          tooltipText="Search by question text"
          type="text"
        />
        <TextInputWidget
          id="symptom_search_input"
          label="Search Symptoms"
          tooltipText="Search by symptom provider label"
          type="text"
        />
        <TableLegacy
          id="requires_question_results"
          _columns={[
            "question_text",
            "historical_question",
            "future_question",
            "historical_question_display",
            "not_expected_reason",
            "present_most_severe_first",
            "provider_sees",
            "question_characteristic_uuid",
            "question_characteristic",
            "question_uuid",
            "requires_question",
            "slug",
            "specific_answer_uuids",
            "symptom_uuids",
            "symptoms",
          ]}
          _columnVisibility={{
            ordered: [
              { symptom_uuids: false },
              { future_question: true },
              { specific_answer_uuids: false },
              { question_text: true },
              { question_characteristic_uuid: false },
              { provider_label: true },
              { symptoms: false },
              { name: true },
              { slug: true },
              { sales: true },
              { provider_sees: false },
              { symptom_uuid: true },
              { symptom_id: true },
              { question_uuid: false },
              { question_characteristic: false },
              { requires_question: false },
              { patient_label: true },
              { id: true },
              { historical_question: false },
              { email: true },
              { present_most_severe_first: false },
              { historical_question_display: false },
              { not_expected_reason: false },
            ],
          }}
          _unfilteredSelectedIndex=""
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Select" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "assign_requires_question" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                {
                  actionButtonDisabled:
                    "{{load_new_question.data.requires_question.includes(currentRow.question_uuid)}}",
                },
              ],
            },
            {
              ordered: [
                { actionButtonText: "Remove" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "remove_requires_question" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                {
                  actionButtonDisabled:
                    "{{!load_new_question.data.requires_question.includes(currentRow.question_uuid)}}",
                },
              ],
            },
          ]}
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { symptom_uuids: "" },
              { future_question: "" },
              { specific_answer_uuids: "" },
              {
                question_text:
                  "{{load_new_question.data.requires_question.includes(currentRow.question_uuid) ? 'green':'white'}}",
              },
              { question_characteristic_uuid: "" },
              { provider_label: "" },
              { symptoms: "" },
              { slug: "" },
              { provider_sees: "" },
              { symptom_uuid: "" },
              { symptom_id: "" },
              { question_uuid: "" },
              { question_characteristic: "" },
              { requires_question: "" },
              { patient_label: "" },
              { historical_question: "" },
              { present_most_severe_first: "" },
              { historical_question_display: "" },
              { not_expected_reason: "" },
            ],
          }}
          columns={[
            "question_text",
            "historical_question",
            "future_question",
            "historical_question_display",
            "not_expected_reason",
            "present_most_severe_first",
            "provider_sees",
            "question_characteristic_uuid",
            "question_characteristic",
            "question_uuid",
            "requires_question",
            "slug",
            "specific_answer_uuids",
            "symptom_uuids",
            "symptoms",
          ]}
          columnVisibility={{
            ordered: [
              { symptom_uuids: false },
              { future_question: true },
              { specific_answer_uuids: false },
              { question_text: true },
              { question_characteristic_uuid: false },
              { provider_label: true },
              { symptoms: false },
              { name: true },
              { slug: true },
              { sales: true },
              { provider_sees: false },
              { symptom_uuid: true },
              { symptom_id: true },
              { question_uuid: false },
              { question_characteristic: false },
              { requires_question: false },
              { patient_label: true },
              { id: true },
              { historical_question: false },
              { email: true },
              { present_most_severe_first: false },
              { historical_question_display: false },
              { not_expected_reason: false },
            ],
          }}
          customButtonName=""
          data="{{requires_question_search.data.hits.hits.map(hit => hit['_source'])}}"
          pageSize={11}
          showColumnBorders={true}
        />
        <TableLegacy
          id="symptom_search_results"
          _columns={[
            "id",
            "name",
            "email",
            "sales",
            "symptom_uuid",
            "symptom_id",
            "provider_label",
            "patient_label",
          ]}
          _columnVisibility={{
            ordered: [
              { symptom_uuid: false },
              { symptom_id: false },
              { provider_label: true },
              { patient_label: true },
              { id: true },
              { name: true },
              { email: true },
              { sales: true },
            ],
          }}
          _unfilteredSelectedIndex=""
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Add Symptom" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "assign_symtom_to_question" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                {
                  actionButtonDisabled:
                    "{{load_new_question.data.symptom_uuid.includes(currentRow.symptom_uuid)}}",
                },
              ],
            },
            {
              ordered: [
                { actionButtonText: "Remove" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "remove_symptom_from_question" },
                { actionButtonInternalUrlPath: "" },
                { actionButtonInternalUrlQuery: "" },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: false },
                {
                  actionButtonDisabled:
                    "{{!load_new_question.data.symptom_uuid.includes(currentRow.symptom_uuid)}}",
                },
              ],
            },
          ]}
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { symptom_uuid: "" },
              { symptom_id: "" },
              {
                provider_label:
                  "{{load_new_question.data.symptom_uuid.includes(currentRow.symptom_uuid) ? 'green':'white'}}",
              },
              { patient_label: "" },
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
          ]}
          columnVisibility={{
            ordered: [
              { symptom_uuid: false },
              { symptom_id: false },
              { provider_label: true },
              { patient_label: true },
              { id: true },
              { name: true },
              { email: true },
              { sales: true },
            ],
          }}
          columnWidths={[{ object: { id: "symptom_uuid", value: 135.5 } }]}
          customButtonName=""
          data="{{search_symptoms.data.hits.hits.map(hit => hit['_source'])}}"
          pageSize={11}
          serverPaginated={true}
          showColumnBorders={true}
        />
        <TableLegacy
          id="table2"
          _columns={[
            "id",
            "name",
            "email",
            "sales",
            "historical_question",
            "historical_question_display",
            "not_expected_reason",
            "present_most_severe_first",
            "provider_sees",
            "question_characteristic_uuid",
            "question_text",
            "question_uuid",
            "requires_question",
            "slug",
            "specific_answer_uuids",
            "symptom_uuids",
            "last_modified_date",
            "last_modified_user",
            "future_question",
            "specific_answer_uuid",
            "specific_answer_label",
            "generic_answer_display",
            "clinical_severity_order",
            "alert_tier",
            "next_question_slug",
            "expected",
          ]}
          _columnVisibility={{
            ordered: [
              { specific_answer_label: true },
              { symptom_uuids: false },
              { future_question: false },
              { specific_answer_uuids: false },
              { alert_tier: true },
              { question_text: false },
              { question_characteristic_uuid: false },
              { generic_answer_display: true },
              { name: true },
              { slug: false },
              { sales: true },
              { provider_sees: false },
              { specific_answer_uuid: false },
              { question_uuid: false },
              { requires_question: false },
              { last_modified_user: false },
              { clinical_severity_order: true },
              { expected: true },
              { next_question_slug: false },
              { id: true },
              { last_modified_date: false },
              { historical_question: false },
              { email: true },
              { present_most_severe_first: false },
              { historical_question_display: false },
              { not_expected_reason: false },
            ],
          }}
          _unfilteredSelectedIndex=""
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { specific_answer_label: "" },
              { symptom_uuids: "" },
              { future_question: "" },
              { specific_answer_uuids: "" },
              { alert_tier: "" },
              { question_text: "" },
              { question_characteristic_uuid: "" },
              { generic_answer_display: "" },
              { slug: "" },
              { provider_sees: "" },
              { specific_answer_uuid: "" },
              { question_uuid: "" },
              { requires_question: "" },
              { last_modified_user: "" },
              { clinical_severity_order: "" },
              { expected: "" },
              { next_question_slug: "" },
              { last_modified_date: "" },
              { historical_question: "" },
              { present_most_severe_first: "" },
              { historical_question_display: "" },
              { not_expected_reason: "" },
            ],
          }}
          columns={[
            "id",
            "name",
            "email",
            "sales",
            "historical_question",
            "historical_question_display",
            "not_expected_reason",
            "present_most_severe_first",
            "provider_sees",
            "question_characteristic_uuid",
            "question_text",
            "question_uuid",
            "requires_question",
            "slug",
            "specific_answer_uuids",
            "symptom_uuids",
            "last_modified_date",
            "last_modified_user",
            "future_question",
            "specific_answer_uuid",
            "specific_answer_label",
            "generic_answer_display",
            "clinical_severity_order",
            "alert_tier",
            "next_question_slug",
            "expected",
          ]}
          columnVisibility={{
            ordered: [
              { specific_answer_label: true },
              { symptom_uuids: false },
              { future_question: false },
              { specific_answer_uuids: false },
              { alert_tier: true },
              { question_text: false },
              { question_characteristic_uuid: false },
              { generic_answer_display: true },
              { name: true },
              { slug: false },
              { sales: true },
              { provider_sees: false },
              { specific_answer_uuid: false },
              { question_uuid: false },
              { requires_question: false },
              { last_modified_user: false },
              { clinical_severity_order: true },
              { expected: true },
              { next_question_slug: false },
              { id: true },
              { last_modified_date: false },
              { historical_question: false },
              { email: true },
              { present_most_severe_first: false },
              { historical_question_display: false },
              { not_expected_reason: false },
            ],
          }}
          customButtonName=""
          data="{{ load_answers_for_new_question.data }}"
          pageSize={9}
          showColumnBorders={true}
        />
      </Wizard>
      <MultiSelectWidget
        id="fields_to_search"
        label="Search Fields"
        labels={
          '["Symptom - Provider", "Symptom - Patient", "Question Text", "Requires Question"]'
        }
        placeholder="Select a value"
        value={
          '["symptoms.provider_label", "symptoms.patient_label", "question_text"]'
        }
        values={
          '["symptoms.provider_label", "symptoms.patient_label", "question_text", "requires_question.question_text"]'
        }
      />
      <ButtonWidget
        id="button1"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "load_survey_questions" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        style={{ ordered: [{ "accent-background": "#6a6a6a" }] }}
        value="Reload Survey"
      />
      <TableLegacy
        id="question_search_results"
        _columns={[
          "question_text",
          "historical_question",
          "historical_question_display",
          "not_expected_reason",
          "present_most_severe_first",
          "provider_sees",
          "question_characteristic_uuid",
          "question_uuid",
          "slug",
          "requires_question",
          "specific_answer_uuids",
          "symptom_uuids",
          "last_modified_date",
          "last_modified_user",
          "symptoms",
          "question_characteristic",
          "future_question",
          "Custom Column 1",
        ]}
        _columnVisibility={{
          ordered: [
            { symptom_uuids: false },
            { future_question: false },
            { specific_answer_uuids: false },
            { question_text: true },
            { question_characteristic_uuid: false },
            { symptoms: true },
            { name: true },
            { slug: true },
            { sales: true },
            { provider_sees: false },
            { question_uuid: false },
            { question_characteristic: true },
            { "Custom Column 1": true },
            { requires_question: true },
            { last_modified_user: false },
            { id: true },
            { last_modified_date: false },
            { historical_question: true },
            { email: true },
            { present_most_severe_first: false },
            { historical_question_display: false },
            { not_expected_reason: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Add to survey" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "add_question_to_survey_from_search" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              {
                actionButtonDisabled:
                  "{{load_survey_questions.data.question_uuid.includes(currentRow.question_uuid)}}",
              },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnAllowOverflow={{
          ordered: [
            { requires_question: true },
            { slug: true },
            { question_text: true },
          ],
        }}
        columnColors={{
          ordered: [
            { symptom_uuids: "" },
            { future_question: "" },
            { specific_answer_uuids: "" },
            { question_text: "" },
            { question_characteristic_uuid: "" },
            { symptoms: "" },
            { slug: "" },
            { provider_sees: "" },
            { question_uuid: "" },
            { question_characteristic: "" },
            { requires_question: "" },
            { last_modified_user: "" },
            { last_modified_date: "" },
            { historical_question: "" },
            { present_most_severe_first: "" },
            { historical_question_display: "" },
            { not_expected_reason: "" },
          ],
        }}
        columnEditable={{ ordered: [{ slug: false }] }}
        columnHeaderNames={{
          ordered: [
            { question_characteristic: "QC Order" },
            { symptoms: "symptom" },
            { historical_question: "Active" },
            { "Custom Column 1": "In survey" },
          ],
        }}
        columnMappers={{
          ordered: [
            { requires_question: "{{self.question_text}}" },
            {
              question_characteristic: "{{self.question_characteristic_order}}",
            },
            { symptoms: "{{self.map(x => x.provider_label)}}" },
            {
              historical_question:
                "{{!currentRow.historical_question && !currentRow.future_question}}",
            },
            {
              "Custom Column 1":
                "{{load_survey_questions.data.question_uuid.includes(currentRow.question_uuid)}}",
            },
          ],
        }}
        columns={[
          "question_text",
          "historical_question",
          "historical_question_display",
          "not_expected_reason",
          "present_most_severe_first",
          "provider_sees",
          "question_characteristic_uuid",
          "question_uuid",
          "slug",
          "requires_question",
          "specific_answer_uuids",
          "symptom_uuids",
          "last_modified_date",
          "last_modified_user",
          "symptoms",
          "question_characteristic",
          "future_question",
          "Custom Column 1",
        ]}
        columnVisibility={{
          ordered: [
            { symptom_uuids: false },
            { future_question: false },
            { specific_answer_uuids: false },
            { question_text: true },
            { question_characteristic_uuid: false },
            { symptoms: true },
            { name: true },
            { slug: true },
            { sales: true },
            { provider_sees: false },
            { question_uuid: false },
            { question_characteristic: true },
            { "Custom Column 1": true },
            { requires_question: true },
            { last_modified_user: false },
            { id: true },
            { last_modified_date: false },
            { historical_question: true },
            { email: true },
            { present_most_severe_first: false },
            { historical_question_display: false },
            { not_expected_reason: false },
          ],
        }}
        columnWidths={[
          { object: { id: "requires_question", value: 206.546875 } },
          { object: { id: "slug", value: 157.109375 } },
          { object: { id: "symptoms", value: 184.1875 } },
          { object: { id: "historical_question", value: 58 } },
          { object: { id: "question_text", value: 423.796875 } },
        ]}
        customButtonName=""
        data="{{question_search.data.hits.hits.map(hit => hit['_source'])}}"
        events={[]}
        pageSize={47}
        serverPaginated={true}
        showColumnBorders={true}
        sortMappedValue={{
          ordered: [{ question_characteristic: true }, { slug: true }],
        }}
        totalRowCount="{{question_search.data.hits.total.value}}"
      />
      <TableLegacy
        id="table1"
        _columns={[
          "question_text",
          "slug",
          "survey_uuid",
          "question_uuid",
          "position",
          "last_modified_date",
          "last_modified_user",
          "historical_question",
          "historical_question_display",
          "not_expected_reason",
          "present_most_severe_first",
          "provider_sees",
          "question_characteristic_uuid",
          "requires_question",
          "specific_answer_uuids",
          "symptom_uuids",
          "uuid",
          "question_characteristic",
          "question_characteristic_order",
          "future_question",
        ]}
        _columnVisibility={{
          ordered: [
            { survey_uuid: false },
            { symptom_uuids: false },
            { future_question: false },
            { question_characteristic_order: true },
            { specific_answer_uuids: false },
            { question_text: true },
            { question_characteristic_uuid: false },
            { position: true },
            { name: true },
            { slug: true },
            { sales: true },
            { provider_sees: false },
            { question_uuid: false },
            { question_characteristic: true },
            { requires_question: false },
            { last_modified_user: false },
            { id: true },
            { last_modified_date: false },
            { historical_question: false },
            { uuid: false },
            { email: true },
            { present_most_severe_first: false },
            { historical_question_display: false },
            { not_expected_reason: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Remove" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "delete_question_from_survey" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "View/Edit Question" },
              { actionButtonType: "openInternalUrl" },
              { actionButtonQuery: "" },
              {
                actionButtonInternalUrlPath:
                  "1559ae60-fad6-11eb-9cba-df66456c2e83",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"question_uuid\\",\\"value\\":\\"{{table1.selectedRow.data.question_uuid}}\\"}]"',
              },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: true },
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
                  "6cac0c56-ff92-11eb-b7b7-8bd2c044aae2",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"survey_uuid\\",\\"value\\":\\"{{urlparams.uuid}}\\"},{\\"key\\":\\"position\\",\\"value\\":\\"{{currentRow.position}}\\"}]"',
              },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: true },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnAllowOverflow={{ ordered: [{ question_text: true }] }}
        columnColors={{
          ordered: [
            { survey_uuid: "" },
            { symptom_uuids: "" },
            { future_question: "" },
            { question_characteristic_order: "" },
            { specific_answer_uuids: "" },
            { question_text: "" },
            { question_characteristic_uuid: "" },
            { position: "" },
            { slug: "" },
            { provider_sees: "" },
            { question_uuid: "" },
            { question_characteristic: "" },
            { requires_question: "" },
            { last_modified_user: "" },
            { last_modified_date: "" },
            { historical_question: "" },
            { uuid: "" },
            { present_most_severe_first: "" },
            { historical_question_display: "" },
            { not_expected_reason: "" },
          ],
        }}
        columnEditable={{ ordered: [{ position: true }] }}
        columnHeaderNames={{
          ordered: [
            { question_characteristic_order: "QC Order" },
            { question_characteristic: "QC" },
            { question_text: "Question" },
            { position: "Position" },
          ],
        }}
        columns={[
          "question_text",
          "slug",
          "survey_uuid",
          "question_uuid",
          "position",
          "last_modified_date",
          "last_modified_user",
          "historical_question",
          "historical_question_display",
          "not_expected_reason",
          "present_most_severe_first",
          "provider_sees",
          "question_characteristic_uuid",
          "requires_question",
          "specific_answer_uuids",
          "symptom_uuids",
          "uuid",
          "question_characteristic",
          "question_characteristic_order",
          "future_question",
        ]}
        columnVisibility={{
          ordered: [
            { survey_uuid: false },
            { symptom_uuids: false },
            { future_question: false },
            { question_characteristic_order: true },
            { specific_answer_uuids: false },
            { question_text: true },
            { question_characteristic_uuid: false },
            { position: true },
            { name: true },
            { slug: true },
            { sales: true },
            { provider_sees: false },
            { question_uuid: false },
            { question_characteristic: true },
            { requires_question: false },
            { last_modified_user: false },
            { id: true },
            { last_modified_date: false },
            { historical_question: false },
            { uuid: false },
            { email: true },
            { present_most_severe_first: false },
            { historical_question_display: false },
            { not_expected_reason: false },
          ],
        }}
        columnWidths={[
          { object: { id: "question_characteristic", value: 163.5 } },
          { object: { id: "question_characteristic_order", value: 69 } },
          { object: { id: "question_text", value: 372 } },
          { object: { id: "slug", value: 157.75 } },
          { object: { id: "position", value: 73 } },
        ]}
        customButtonName=""
        data="{{ load_survey_questions.data }}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "bulkUpdateQuestionOrder" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={47}
        showColumnBorders={true}
      />
      <Text
        id="text2"
        style={{ ordered: [] }}
        value="Survey UUID: {{load_survey_data.data.uuid}}"
        verticalAlign="center"
      />
    </TabbedContainerWidget>
  </Frame>
</App>
