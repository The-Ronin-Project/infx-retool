<Container
  id="edit_question_group"
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
      targetContainerId="edit_question_group"
      value="{{ self.values[0] }}"
    >
      <Option id="aae53" value="Tab 1" />
      <Option id="e623f" value="Tab 2" />
      <Option id="e2016" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Current Question Group" viewKey={0}>
    <Text
      id="text2"
      style={{ ordered: [] }}
      value="__Edits made to this question group will change all surveys which use it__"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _columns={[
        "survey_uuid",
        "question_uuid",
        "question_text",
        "position",
        "last_modified_date",
        "last_modified_user",
        "uuid",
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
        "question_characteristic",
        "question_characteristic_order",
        "question_group_uuid",
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
          { slug: false },
          { sales: true },
          { provider_sees: false },
          { question_uuid: false },
          { question_characteristic: false },
          { question_group_uuid: false },
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
            { actionButtonText: "Remove from group" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "delete_from_question_group" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Edit Question" },
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
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
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
          { question_group_uuid: "" },
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
      columnMappers={{
        ordered: [
          { symptom_uuids: "" },
          { question_group_uuid: "" },
          { question_characteristic_uuid: "" },
        ],
      }}
      columns={[
        "survey_uuid",
        "question_uuid",
        "question_text",
        "position",
        "last_modified_date",
        "last_modified_user",
        "uuid",
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
        "question_characteristic",
        "question_characteristic_order",
        "question_group_uuid",
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
          { slug: false },
          { sales: true },
          { provider_sees: false },
          { question_uuid: false },
          { question_characteristic: false },
          { question_group_uuid: false },
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
        { object: { id: "question_text", value: 765 } },
        { object: { id: "position", value: 122.53125 } },
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
      pageSize={17}
      showColumnBorders={true}
    />
    <Text id="text1" style={{ ordered: [] }} verticalAlign="center" />
  </View>
  <View id="1" label="Search Questions" viewKey={1}>
    <TextInput
      id="search_field"
      disabled=""
      hidden={null}
      label="Search"
      labelAlign="right"
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      placeholder="Enter value"
      showClear={true}
      showInEditor={null}
    />
    <Multiselect
      id="multiselect1"
      allowSearch={true}
      data={
        '["symptoms.provider_label", "symptoms.patient_label", "question_text"]'
      }
      deprecatedLabels=""
      disabled=""
      hidden={null}
      label="Search Fields"
      labelAlign="right"
      labels={
        '{{ ["Symptom - Provider", "Symptom - Patient", "Question Text"][i] }}'
      }
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      overlayMaxHeight={250}
      placeholder="Select a value"
      showClear={true}
      showInEditor={null}
      value={
        '["symptoms.provider_label", "symptoms.patient_label", "question_text"] '
      }
      values="{{ item }}"
    />
    <TableLegacy
      id="question_search_results"
      _columns={[
        "historical_question",
        "future_question",
        "historical_question_display",
        "not_expected_reason",
        "present_most_severe_first",
        "provider_sees",
        "question_characteristic_uuid",
        "question_text",
        "symptoms",
        "question_characteristic",
        "question_uuid",
        "requires_question",
        "slug",
        "specific_answer_uuids",
        "symptom_uuids",
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
          { slug: false },
          { sales: true },
          { provider_sees: false },
          { question_uuid: false },
          { question_characteristic: true },
          { requires_question: true },
          { id: true },
          { historical_question: true },
          { email: true },
          { present_most_severe_first: false },
          { historical_question_display: false },
          { not_expected_reason: false },
        ],
      }}
      _compatibilityMode={false}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Add to group" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "add_question_to_question_group" },
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
        {
          ordered: [
            { actionButtonText: "Edit Question" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "delete_from_question_group" },
            {
              actionButtonInternalUrlPath:
                "1559ae60-fad6-11eb-9cba-df66456c2e83",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"question_uuid\\",\\"value\\":\\"{{question_search_results.selectedRow.data.question_uuid}}\\"}]"',
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
          { "Custom Column 1": "" },
          { requires_question: "" },
          { "Custom Column 2": "" },
          { "Custom Column 3": "" },
          { "Custom Column 4": "" },
          { historical_question: "" },
          { present_most_severe_first: "" },
          { historical_question_display: "" },
          { not_expected_reason: "" },
        ],
      }}
      columnMappers={{
        ordered: [
          { symptoms: "{{self.map(x => x.provider_label)}}" },
          { question_characteristic: "{{self.question_characteristic_order}}" },
          { requires_question: "{{self.question_text}}" },
        ],
      }}
      columns={[
        "historical_question",
        "future_question",
        "historical_question_display",
        "not_expected_reason",
        "present_most_severe_first",
        "provider_sees",
        "question_characteristic_uuid",
        "question_text",
        "symptoms",
        "question_characteristic",
        "question_uuid",
        "requires_question",
        "slug",
        "specific_answer_uuids",
        "symptom_uuids",
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
          { slug: false },
          { sales: true },
          { provider_sees: false },
          { question_uuid: false },
          { question_characteristic: true },
          { requires_question: true },
          { id: true },
          { historical_question: true },
          { email: true },
          { present_most_severe_first: false },
          { historical_question_display: false },
          { not_expected_reason: false },
        ],
      }}
      columnWidths={[
        { object: { id: "requires_question", value: 148 } },
        { object: { id: "question_characteristic", value: 91.25 } },
        { object: { id: "symptoms", value: 172.5 } },
        { object: { id: "question_text", value: 570 } },
      ]}
      customButtonName=""
      data="{{question_search.data.hits.hits.map(hit => hit['_source'])}}"
      pageSize={11}
      serverPaginated={true}
      showColumnBorders={true}
      totalRowCount="{{question_search.data.hits.total.value}}"
    />
  </View>
  <View id="2" label="Branching Logic" viewKey={2}>
    <ListView
      id="listview1"
      dynamicHeightsEnabled={false}
      formDataKey=""
      heightType="fixed"
      instances="{{load_questions_and_answers.data.uuid.length}}"
      itemHeight="2"
      overflowType="visible"
      scroll={false}
    >
      <Text
        id="text3"
        hidden="{{parseInt(load_questions_and_answers.data.clinical_severity_order[i]) != 1}}"
        style={{ ordered: [] }}
        value="__{{load_questions_and_answers.data.question_text[i]}}__"
        verticalAlign="center"
      />
      <Text
        id="text4"
        style={{ ordered: [] }}
        value="{{load_questions_and_answers.data.generic_answer_display[i]}}"
        verticalAlign="center"
      />
      <Select
        id="dropdown1"
        allowSearch={true}
        data="{{ [null, 1].concat( load_survey_questions.data.question_uuid.slice(load_survey_questions.data.question_uuid.indexOf(load_questions_and_answers.data.question_uuid[i])+1))}}"
        deprecatedLabels="{{ ['Next Question', 'Next Question Group'].concat( load_survey_questions.data.question_text.slice(load_survey_questions.data.question_text.indexOf(load_questions_and_answers.data.question_text[i])+1))}}"
        disabled=""
        hidden={null}
        label="Next Question"
        labelAlign="right"
        labels="{{ self.deprecatedLabels[i] }}"
        labelWrap={true}
        maintainSpaceWhenHidden={null}
        overlayMaxHeight={250}
        placeholder="Select a value"
        showClear={true}
        showInEditor={null}
        value="{{load_questions_and_answers.data.specific_next_question[i] ? load_questions_and_answers.data.specific_next_question[i] : (load_questions_and_answers.data.next_question_group[i] ? 1 : null)}}"
        values="{{ item }}"
      />
    </ListView>
  </View>
</Container>
