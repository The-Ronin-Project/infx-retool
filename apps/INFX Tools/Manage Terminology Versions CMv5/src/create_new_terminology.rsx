<Modal
  id="create_new_terminology"
  buttonText="Create New Terminology"
  modalHeight="490
"
  modalHeightType="auto"
  modalWidth="65%"
>
  <Text
    id="create_new_terminology_title"
    horizontalAlign="center"
    value="#### Create New Terminology or Code System"
    verticalAlign="center"
  />
  <Container id="terminology_required_parts" showBody={true} showHeader={true}>
    <Header>
      <Text
        id="containerTitle5"
        heightType="fixed"
        hidden="true
"
        imageWidth="fill"
        overflowType="hidden"
        verticalAlign="center"
      />
    </Header>
    <View id="cdab7" viewKey="View 1">
      <TextInput
        id="new_name"
        label="Terminology"
        labelAlign="right"
        placeholder="Enter Terminology Name"
        required={true}
      />
      <NumberInput
        id="version"
        currency="USD"
        decimalPlaces="1"
        inputValue={0}
        label="Version"
        labelAlign="right"
        padDecimal={true}
        placeholder="Enter value"
        required={true}
        showSeparators={true}
        showStepper={true}
        value="1.0"
      />
      <DateRange
        id="date_range"
        dateFormat="MMM d, yyyy"
        endPlaceholder="Effective End"
        firstDayOfWeek={0}
        iconBefore="bold/interface-calendar-remove"
        label="Effective Dates*"
        labelAlign="right"
        startPlaceholder="Effective Start"
        textBetween="-"
        value={{ ordered: [{ start: "" }, { end: "" }] }}
      />
    </View>
  </Container>
  <Include src="./fhir_uri_selectable_components.rsx" />
  <Container id="uri_preview" showBody={true} showHeader={true}>
    <Header>
      <Text
        id="containerTitle4"
        horizontalAlign="center"
        value="##### URI Previvew"
        verticalAlign="center"
      />
    </Header>
    <View id="7e5e0" viewKey="View 1">
      <EditableTextArea
        id="fhir_uri"
        editIcon="bold/interface-edit-write-1"
        inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
        label=""
        labelPosition="top"
        style={{ ordered: [] }}
        value="http://projectronin.io/fhir/CodeSystem/{{tenant_id.value}}/{{fhir_resource.value}}{{fhir_element.value}}"
      />
      <Text
        id="uri_preview_instructions"
        style={{ ordered: [{ color: "rgba(179, 179, 179, 1)" }] }}
        value="The preview text will save as this terminology version's URI. 
For a non-FHIR URI, click the preview text to edit."
        verticalAlign="center"
      />
    </View>
  </Container>
  <Checkbox
    id="is_standard"
    _disclosedFields={{ array: [] }}
    label="Standard Terminology"
  >
    <Event
      event="true"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="tenant_id"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="true"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="fhir_resource"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="true"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="fhir_element"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Checkbox>
  <Checkbox
    id="is_fhir"
    _disclosedFields={{ array: [] }}
    label="FHIR Terminology"
  >
    <Event
      event="true"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="tenant_id"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="true"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="fhir_resource"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="true"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="fhir_element"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Checkbox>
  <Button
    id="add_version"
    disabled={
      '{{fhir_uri.value == "" ||\nfhir_uri.value == "http://projectronin.io/fhir/CodeSystem//" ||  \ndate_range.value == "" || check_existing_row_fhir_uri_and_version.data.count[0] > 0}}\n'
    }
    styleVariant="solid"
    text="Add Terminology Version"
    tooltipText="Version and FHIR uri are required. The combination of version and FHIR uri shall be novel."
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="add_new_terminology"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Modal
    id="create_new_terminology2"
    buttonText="Add Terminology Version"
    events={[
      {
        ordered: [
          { event: "open" },
          { type: "datasource" },
          { method: "trigger" },
          { pluginId: "add_new_terminology" },
          { targetId: null },
          { params: { ordered: [] } },
          { waitType: "debounce" },
          { waitMs: "0" },
        ],
      },
    ]}
    hidden="true"
    modalOverflowType="hidden"
    tooltipText="Version and FHIR uri are required. The combination of version and FHIR uri shall be novel."
  >
    <Include src="./container2.rsx" />
  </Modal>
</Modal>
