<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="cm_version" defaultValue="{{urlparams.uuid}}" />
  <GlobalWidgetProp id="map_comment" defaultValue="{{mapcomments.value}}" />
  <GlobalWidgetProp
    id="relationship"
    defaultValue="{{relationship_selection.value}}"
  />
  <GlobalWidgetProp
    id="source_concept"
    defaultValue="{{source_concepts.selectedRow.data.uuid}}"
  />
  <Frame id="$main" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Select
        id="loinc_version_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{load_loinc_versions.data.uuid}}"
        deprecatedLabels="{{load_loinc_versions.data.version}}"
        label="LOINC Version"
        labels="{{ self.deprecatedLabels[i] }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{load_loinc_versions.data.uuid[0]}}"
        values="{{ item }}"
      />
      <ContainerWidget id="container2">
        <TextInput
          id="component_search"
          label="Component"
          placeholder="Search components"
        />
        <Checkbox
          id="related_names"
          label="Search Related Names"
          style={{ ordered: [{ staticText: "rgba(38, 38, 38, 0.7)" }] }}
        />
        <Select
          id="search_type"
          allowDeselect={true}
          allowSearch={true}
          data="['Basic', 'Prefix', 'Advanced']"
          hideLabel={true}
          label="Search Type"
          labels="{{ _.startCase(item) }}"
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="'Prefix'"
          values="{{ item }}"
        />
        <MultiselectListbox
          id="component_select"
          data="{{search_component.data}}"
          hideLabel={true}
          label="Component"
          labelPosition="top"
          labels=""
          showActions={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item }}"
        />
      </ContainerWidget>
      <ContainerWidget id="container3">
        <MultiselectListbox
          id="method_select"
          data="{{method_options.data.method_typ}}"
          label="Method (Optional)"
          labelPosition="top"
          labels=""
          showActions={true}
          showSelectionIndicator={true}
          value="{{ self.values.slice(0, 1) }}"
          values="{{ item }}"
        />
        <MultiselectListbox
          id="timing_select"
          data="{{timing_options.data.time_aspct}}"
          label="Timing"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item }}"
        />
        <MultiselectListbox
          id="scale_select"
          data="{{scale_options.data.scale_typ}}"
          label="Scale"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item }}"
        />
        <MultiselectListbox
          id="property_select"
          data="{{property_options.data.property}}"
          label="Property"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item }}"
        />
        <MultiselectListbox
          id="system_select"
          data="{{system_options.data.system}}"
          label="System"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
      </ContainerWidget>
      <ContainerWidget id="container1">
        <Text id="text1" value="##### Results" verticalAlign="center" />
        <TableLegacy
          id="table1"
          _columns={[
            "loinc_num",
            "long_common_name",
            "component",
            "property",
            "time_aspct",
            "system",
            "scale_typ",
            "method_typ",
            "class",
            "status",
            "order_obs",
            "versionlastchanged",
            "chng_type",
            "definitiondescription",
            "consumer_name",
            "classtype",
            "formula",
            "exmpl_answers",
            "survey_quest_text",
            "survey_quest_src",
            "unitsrequired",
            "submitted_units",
            "relatednames2",
            "shortname",
            "cdisc_common_tests",
            "hl7_field_subfield_id",
            "external_copyright_notice",
            "example_units",
            "unitsandrange",
            "example_ucum_units",
            "example_si_ucum_units",
            "status_reason",
            "status_text",
            "change_reason_public",
            "common_test_rank",
            "common_order_rank",
            "common_si_test_rank",
            "hl7_attachment_structure",
            "externalcopyrightlink",
            "paneltype",
            "askatorderentry",
            "associatedobservations",
            "versionfirstreleased",
            "validhl7attachmentrequest",
            "displayname",
            "terminology_version_uuid",
          ]}
          _columnVisibility={{
            ordered: [
              { loinc_num: true },
              { survey_quest_src: false },
              { hl7_attachment_structure: false },
              { external_copyright_notice: false },
              { common_si_test_rank: false },
              { common_test_rank: false },
              { formula: false },
              { versionlastchanged: false },
              { shortname: false },
              { display_name: false },
              { definitiondescription: false },
              { example_si_ucum_units: false },
              { example_ucum_units: false },
              { name: true },
              { submitted_units: false },
              { sales: true },
              { exmpl_answers: false },
              { associatedobservations: false },
              { code: true },
              { method_typ: false },
              { displayname: false },
              { unitsrequired: false },
              { short_name: false },
              { terminology_version_uuid: false },
              { survey_quest_text: false },
              { order_obs: false },
              { system: false },
              { hl7_field_subfield_id: false },
              { askatorderentry: false },
              { common_order_rank: false },
              { status_reason: false },
              { classtype: false },
              { version_last_changed: false },
              { status: false },
              { consumer_name: false },
              { related_names: false },
              { cdisc_common_tests: false },
              { relatednames2: false },
              { property: false },
              { versionfirstreleased: false },
              { unitsandrange: false },
              { change_reason_public: false },
              { validhl7attachmentrequest: false },
              { scale_typ: false },
              { externalcopyrightlink: false },
              { class: false },
              { example_units: false },
              { status_text: false },
              { id: true },
              { chng_type: false },
              { long_common_name: true },
              { email: true },
              { component: false },
              { time_aspct: false },
              { paneltype: false },
            ],
          }}
          _unfilteredSelectedIndex=""
          actionButtonPosition="right"
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Map" },
                { actionButtonType: "runQuery" },
                { actionButtonQuery: "map" },
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
              { loinc_num: "" },
              { survey_quest_src: "" },
              { hl7_attachment_structure: "" },
              { external_copyright_notice: "" },
              { common_si_test_rank: "" },
              { common_test_rank: "" },
              { formula: "" },
              { versionlastchanged: "" },
              { shortname: "" },
              { display_name: "" },
              { definitiondescription: "" },
              { example_si_ucum_units: "" },
              { example_ucum_units: "" },
              { name: "" },
              { submitted_units: "" },
              { sales: "" },
              { exmpl_answers: "" },
              { associatedobservations: "" },
              { code: "" },
              { method_typ: "" },
              { displayname: "" },
              { unitsrequired: "" },
              { short_name: "" },
              { terminology_version_uuid: "" },
              { survey_quest_text: "" },
              { order_obs: "" },
              { system: "" },
              { hl7_field_subfield_id: "" },
              { askatorderentry: "" },
              { common_order_rank: "" },
              { status_reason: "" },
              { classtype: "" },
              { version_last_changed: "" },
              { status: "" },
              { consumer_name: "" },
              { related_names: "" },
              { cdisc_common_tests: "" },
              { relatednames2: "" },
              { property: "" },
              { versionfirstreleased: "" },
              { unitsandrange: "" },
              { change_reason_public: "" },
              { validhl7attachmentrequest: "" },
              { scale_typ: "" },
              { externalcopyrightlink: "" },
              { class: "" },
              { example_units: "" },
              { status_text: "" },
              { id: "" },
              { chng_type: "" },
              { long_common_name: "" },
              { email: "" },
              { component: "" },
              { time_aspct: "" },
              { paneltype: "" },
            ],
          }}
          columns={[
            "loinc_num",
            "long_common_name",
            "component",
            "property",
            "time_aspct",
            "system",
            "scale_typ",
            "method_typ",
            "class",
            "status",
            "order_obs",
            "versionlastchanged",
            "chng_type",
            "definitiondescription",
            "consumer_name",
            "classtype",
            "formula",
            "exmpl_answers",
            "survey_quest_text",
            "survey_quest_src",
            "unitsrequired",
            "submitted_units",
            "relatednames2",
            "shortname",
            "cdisc_common_tests",
            "hl7_field_subfield_id",
            "external_copyright_notice",
            "example_units",
            "unitsandrange",
            "example_ucum_units",
            "example_si_ucum_units",
            "status_reason",
            "status_text",
            "change_reason_public",
            "common_test_rank",
            "common_order_rank",
            "common_si_test_rank",
            "hl7_attachment_structure",
            "externalcopyrightlink",
            "paneltype",
            "askatorderentry",
            "associatedobservations",
            "versionfirstreleased",
            "validhl7attachmentrequest",
            "displayname",
            "terminology_version_uuid",
          ]}
          columnVisibility={{
            ordered: [
              { loinc_num: true },
              { survey_quest_src: false },
              { hl7_attachment_structure: false },
              { external_copyright_notice: false },
              { common_si_test_rank: false },
              { common_test_rank: false },
              { formula: false },
              { versionlastchanged: false },
              { shortname: false },
              { display_name: false },
              { definitiondescription: false },
              { example_si_ucum_units: false },
              { example_ucum_units: false },
              { name: true },
              { submitted_units: false },
              { sales: true },
              { exmpl_answers: false },
              { associatedobservations: false },
              { code: true },
              { method_typ: false },
              { displayname: false },
              { unitsrequired: false },
              { short_name: false },
              { terminology_version_uuid: false },
              { survey_quest_text: false },
              { order_obs: false },
              { system: false },
              { hl7_field_subfield_id: false },
              { askatorderentry: false },
              { common_order_rank: false },
              { status_reason: false },
              { classtype: false },
              { version_last_changed: false },
              { status: false },
              { consumer_name: false },
              { related_names: false },
              { cdisc_common_tests: false },
              { relatednames2: false },
              { property: false },
              { versionfirstreleased: false },
              { unitsandrange: false },
              { change_reason_public: false },
              { validhl7attachmentrequest: false },
              { scale_typ: false },
              { externalcopyrightlink: false },
              { class: false },
              { example_units: false },
              { status_text: false },
              { id: true },
              { chng_type: false },
              { long_common_name: true },
              { email: true },
              { component: false },
              { time_aspct: false },
              { paneltype: false },
            ],
          }}
          columnWidths={[
            { object: { id: "code", value: 88.375 } },
            { object: { id: "loinc_num", value: 94 } },
            { object: { id: "__retool__action_list", value: 209.625 } },
            { object: { id: "long_common_name", value: 446.375 } },
          ]}
          customButtonName=""
          data="{{final_code_search.data}}"
          defaultSelectedRow="none"
          overflowType="scroll"
          pageSize={31}
          selectRowByDefault={false}
          showColumnBorders={true}
        />
      </ContainerWidget>
    </ModuleContainerWidget>
  </Frame>
</App>
