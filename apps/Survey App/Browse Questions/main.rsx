<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TableLegacy
      id="table1"
      _columns={[
        "question_text",
        "historical_question",
        "historical_question_display",
        "not_expected_reason",
        "present_most_severe_first",
        "provider_sees",
        "question_characteristic_uuid",
        "question_uuid",
        "requires_question",
        "slug",
        "specific_answer_uuids",
        "symptom_uuids",
        "last_modified_date",
        "last_modified_user",
        "future_question",
      ]}
      _columnVisibility={{
        ordered: [
          { symptom_uuids: true },
          { future_question: true },
          { specific_answer_uuids: false },
          { question_text: true },
          { question_characteristic_uuid: false },
          { slug: false },
          { provider_sees: true },
          { question_uuid: false },
          { requires_question: true },
          { last_modified_user: false },
          { last_modified_date: false },
          { historical_question: true },
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
            { actionButtonText: "View/Edit" },
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
          { symptom_uuids: "" },
          { future_question: "" },
          { specific_answer_uuids: "" },
          { question_text: "" },
          { question_characteristic_uuid: "" },
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
      columns={[
        "question_text",
        "historical_question",
        "historical_question_display",
        "not_expected_reason",
        "present_most_severe_first",
        "provider_sees",
        "question_characteristic_uuid",
        "question_uuid",
        "requires_question",
        "slug",
        "specific_answer_uuids",
        "symptom_uuids",
        "last_modified_date",
        "last_modified_user",
        "future_question",
      ]}
      columnVisibility={{
        ordered: [
          { symptom_uuids: true },
          { future_question: true },
          { specific_answer_uuids: false },
          { question_text: true },
          { question_characteristic_uuid: false },
          { slug: false },
          { provider_sees: true },
          { question_uuid: false },
          { requires_question: true },
          { last_modified_user: false },
          { last_modified_date: false },
          { historical_question: true },
          { present_most_severe_first: false },
          { historical_question_display: false },
          { not_expected_reason: false },
        ],
      }}
      columnWidths={[{ object: { id: "question_text", value: 550.328125 } }]}
      customButtonName=""
      data="{{ load_questions.data }}"
      overflowType="scroll"
      pageSize={19}
      showColumnBorders={true}
    />
  </Frame>
</App>
