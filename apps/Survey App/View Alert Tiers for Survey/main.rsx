<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="survey_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_surveys.data.uuid}}"
      deprecatedLabels="{{load_surveys.data.title}}"
      label="Survey"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="org_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_organizations.data.uuid}}"
      deprecatedLabels="{{load_organizations.data.org_name}}"
      label="Organization"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <TableLegacy
      id="table1"
      _columns={[
        "uuid",
        "org_name",
        "question_uuid",
        "question_text",
        "title",
        "generic_answer_display",
        "clinical_severity_order",
        "alert_tier",
        "default_alert_tier",
        "override_alert_tier",
      ]}
      _columnVisibility={{
        ordered: [
          { default_alert_tier: true },
          { alert_tier: true },
          { question_text: true },
          { org_name: true },
          { generic_answer_display: true },
          { question_uuid: false },
          { override_alert_tier: true },
          { clinical_severity_order: true },
          { title: true },
          { uuid: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { default_alert_tier: "" },
          { alert_tier: "" },
          { question_text: "" },
          { org_name: "" },
          { generic_answer_display: "" },
          { question_uuid: "" },
          { override_alert_tier: "" },
          { clinical_severity_order: "" },
          { title: "" },
          { uuid: "" },
        ],
      }}
      columns={[
        "uuid",
        "org_name",
        "question_uuid",
        "question_text",
        "title",
        "generic_answer_display",
        "clinical_severity_order",
        "alert_tier",
        "default_alert_tier",
        "override_alert_tier",
      ]}
      columnVisibility={{
        ordered: [
          { default_alert_tier: true },
          { alert_tier: true },
          { question_text: true },
          { org_name: true },
          { generic_answer_display: true },
          { question_uuid: false },
          { override_alert_tier: true },
          { clinical_severity_order: true },
          { title: true },
          { uuid: true },
        ],
      }}
      customButtonName=""
      data="{{load_entire_survey.data}}"
      pageSize={16}
      showColumnBorders={true}
    />
  </Frame>
</App>
