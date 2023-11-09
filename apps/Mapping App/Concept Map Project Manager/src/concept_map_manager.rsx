<Container
  id="concept_map_manager"
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
      targetContainerId="concept_map_manager"
      value="{{ self.values[0] }}"
    >
      <Option id="87294" value="Tab 1" />
      <Option id="2ce34" value="Tab 2" />
      <Option id="cdba9" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Assignment Manager" viewKey={0}>
    <Text
      id="concept_map_info"
      value="{{load_concept_map_version_metadata.data.title}} 
{{pending_concept_count.data.count}} concepts that are 'map pending' that are not assigned to anyone

{{in_progress_concept_count.data.count}} concepts that are 'in progress'

{{ready_for_review_concept_count.data.count}} concepts that are 'ready for review'"
      verticalAlign="center"
    />
    <Text
      id="team_mate_que_information"
      value="FYI: {{message_name_printer.data.first_name}} is already assigned {{in_progress_concept_count.data.count}} concepts that are 'map pending', {{in_progress_concept_count.data.count}} concepts that are 'in progress' and {{review_que_count.data.count}} concepts that are 'ready for review in the {{load_concept_map_version_metadata.data.title}} Version{{load_concept_map_version_metadata.data.version}} concept map."
      verticalAlign="center"
    />
    <Select
      id="team_mate"
      allowDeselect={true}
      allowSearch={true}
      captionByIndex=""
      data="{{select_team_members.data}}"
      deprecatedLabels=""
      disabledByIndex=""
      hiddenByIndex=""
      hideLabel={false}
      label="Team mate"
      labels="{{item.first_last_name}}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{item.uuid}}"
    >
      <Option id="2c714" disabled={false} hidden={false} value="Option 1" />
    </Select>
    <Modal id="mapper_modal" buttonText="Assign Concepts as Mapper">
      <Text
        id="text1"
        value="Confirm: {{warning_box_text.data.first_last_name}} will be assigned {{mapper_qty.value}} pending concepts as a mapper."
        verticalAlign="center"
      />
      <Button
        id="mapper_assignment_button"
        styleVariant="solid"
        submitTargetId=""
        text="Make it so."
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="assign_concepts_mapper"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Modal>
    <NumberInput
      id="mapper_qty"
      currency="USD"
      decimalPlaces=""
      formDataKey="{{self.id}}"
      label="Mapper Count"
      max="{{max_concept_count.data.count}}"
      min="1"
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Modal id="reviewer_modal" buttonText="Assign Concepts as Reviewer">
      <Text
        id="text3"
        value="Confirm: {{warning_box_text.data.first_last_name}} will be assigned {{reviewer_qty.value}} pending concepts as a reviewer."
        verticalAlign="center"
      />
      <Button
        id="assign_review_concepts"
        styleVariant="solid"
        text="Make it so."
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="assign_concepts_reviewer"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="close"
          params={{ ordered: [] }}
          pluginId="mapper_modal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="showNotification"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    { notificationType: "warning" },
                    {
                      title:
                        "Bold move {{current_user.firstName}}.\n\n{{message_name_printer.data.first_name}} will not forget about this.....",
                    },
                    { duration: "3" },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="ready_for_review_concept_count"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Modal>
    <NumberInput
      id="reviewer_qty"
      currency="USD"
      label="Reviewer Count"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
  </View>
  <View id="1" label="Allowed Relationships" viewKey={1}>
    <Select
      id="relationship_selector"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_relationship_systems.data.uuid}}"
      deprecatedLabels="{{load_relationship_systems.data.name}}"
      label="Choose Relationship Systems to allow"
      labelPosition="top"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="choose a relationship system"
      values="{{ item }}"
    />
    <TableLegacy
      id="current_relationship_systems"
      _columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "code",
        "display",
        "system_temp",
        "additional_context",
        "special_use",
        "system_uuid",
        "system",
        "relationship_system_uuid",
        "url",
      ]}
      _columnVisibility={{
        ordered: [
          { special_use: true },
          { display: true },
          { relationship_system_uuid: true },
          { system_temp: false },
          { name: true },
          { system_uuid: false },
          { sales: true },
          { code: false },
          { url: true },
          { system: true },
          { additional_context: true },
          { id: true },
          { uuid: false },
          { email: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnAllowOverflow={{ ordered: [{ additional_context: true }] }}
      columnColors={{
        ordered: [
          { special_use: "" },
          { display: "" },
          { relationship_system_uuid: "" },
          { system_temp: "" },
          { name: "" },
          { system_uuid: "" },
          { sales: "" },
          { code: "" },
          { url: "" },
          { system: "" },
          { additional_context: "" },
          { id: "" },
          { uuid: "" },
          { email: "" },
        ],
      }}
      columnHeaderNames={{
        ordered: [{ name: "relationship sources currently in project" }],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "code",
        "display",
        "system_temp",
        "additional_context",
        "special_use",
        "system_uuid",
        "system",
        "relationship_system_uuid",
        "url",
      ]}
      columnVisibility={{
        ordered: [
          { special_use: true },
          { display: true },
          { relationship_system_uuid: true },
          { system_temp: false },
          { name: true },
          { system_uuid: false },
          { sales: true },
          { code: false },
          { url: true },
          { system: true },
          { additional_context: true },
          { id: true },
          { uuid: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "display", value: 254.671875 } },
        { object: { id: "additional_context", value: 650.921875 } },
        { object: { id: "name", value: 249.828125 } },
      ]}
      customButtonName=""
      data="{{load_current_relationship_systems.data}}"
      pageSize={5}
      showColumnBorders={true}
    />
    <Switch id="allow_special_use_codes" label="Allow special use codes?">
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_allowable_relationships"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <TableLegacy
      id="relationship_codes"
      _columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "code",
        "display",
        "system_temp",
        "additional_context",
        "special_use",
        "system_uuid",
        "system",
        "relationship_system_uuid",
      ]}
      _columnVisibility={{
        ordered: [
          { special_use: true },
          { display: true },
          { relationship_system_uuid: true },
          { system_temp: false },
          { name: true },
          { system_uuid: false },
          { sales: true },
          { code: false },
          { system: true },
          { additional_context: true },
          { id: true },
          { uuid: false },
          { email: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnAllowOverflow={{ ordered: [{ additional_context: true }] }}
      columnColors={{
        ordered: [
          { special_use: "" },
          { display: "" },
          { relationship_system_uuid: "" },
          { system_temp: "" },
          { name: "" },
          { system_uuid: "" },
          { sales: "" },
          { code: "" },
          { system: "" },
          { additional_context: "" },
          { id: "" },
          { uuid: "" },
          { email: "" },
        ],
      }}
      columnHeaderNames={{
        ordered: [{ display: "relationships in selected terminology" }],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "code",
        "display",
        "system_temp",
        "additional_context",
        "special_use",
        "system_uuid",
        "system",
        "relationship_system_uuid",
      ]}
      columnVisibility={{
        ordered: [
          { special_use: true },
          { display: true },
          { relationship_system_uuid: true },
          { system_temp: false },
          { name: true },
          { system_uuid: false },
          { sales: true },
          { code: false },
          { system: true },
          { additional_context: true },
          { id: true },
          { uuid: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "display", value: 254.671875 } },
        { object: { id: "additional_context", value: 650.921875 } },
      ]}
      customButtonName=""
      data="{{load_relationship_codes.data}}"
      pageSize={5}
      showColumnBorders={true}
    />
    <Button
      id="update_relationship_button"
      styleVariant="solid"
      text="Update Allowable Relationships"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_allowable_relationships"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="2" label="Allowable Target Concept Terminologies" viewKey={2}>
    <TableLegacy
      id="enabled_target_terminologies"
      _columns={[
        "uuid",
        "terminology",
        "version",
        "effective_start",
        "effective_end",
        "fhir_uri",
        "is_standard",
      ]}
      _columnVisibility={{
        ordered: [
          { uuid: false },
          { terminology: true },
          { version: true },
          { effective_start: true },
          { effective_end: true },
          { fhir_uri: true },
          { is_standard: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { uuid: "" },
          { terminology: "" },
          { version: "" },
          { effective_start: "" },
          { effective_end: "" },
          { fhir_uri: "" },
          { is_standard: "" },
        ],
      }}
      columns={[
        "uuid",
        "terminology",
        "version",
        "effective_start",
        "effective_end",
        "fhir_uri",
        "is_standard",
      ]}
      columnVisibility={{
        ordered: [
          { uuid: false },
          { terminology: true },
          { version: true },
          { effective_start: true },
          { effective_end: true },
          { fhir_uri: true },
          { is_standard: true },
        ],
      }}
      columnWidths={[{ object: { id: "terminology", value: 182.921875 } }]}
      customButtonName=""
      data="{{load_target_terminologies.data}}"
      pageSize={5}
      showColumnBorders={true}
    />
    <FormWidget
      id="target_select"
      events={[
        {
          ordered: [
            { event: "submit" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "update_target_terminologies" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
    >
      <Select
        id="terminology_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{load_available_terminologies.data.terminology}}"
        deprecatedLabels=""
        label="Select Target Terminologies"
        labels=""
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{ self.values[0] }}"
        values="{{ item }}"
      >
        <Event
          event="change"
          method="clearValue"
          params={{ ordered: [] }}
          pluginId="terminology_version_select"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <Select
        id="terminology_version_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{load_available_terminology_versions.data}}"
        deprecatedLabels="{{load_available_terminology_versions.data.version}}"
        label="Select Target Terminologies"
        labels="{{item.version}}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{ self.values[0] }}"
        values="{{item.uuid}}"
      />
    </FormWidget>
  </View>
  <View id="3" label="Update Status" viewKey={3}>
    <Select
      id="status_selection"
      data="{{ get_all_statuses.data.display }}"
      label="Map Status"
      overlayMaxHeight={375}
      placeholder="{{ get_current_status.data.status[0] }}"
      showSelectionIndicator={true}
      value=""
    />
    <Button id="update_status" styleVariant="solid" text="update map status" />
  </View>
</Container>
