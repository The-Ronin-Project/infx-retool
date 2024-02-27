<Modal
  id="modal1"
  buttonText="Add Rule"
  disabled="{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}"
  events={[]}
  hidden="true"
  style={{ ordered: [{ "primary-surface": "rgb(240, 244, 248)" }] }}
>
  <Text id="text25" value="**Add a Rule Manually**" verticalAlign="center" />
  <Select
    id="type_select"
    allowDeselect={true}
    allowSearch={true}
    data="[true, false]"
    deprecatedLabels=""
    label="Include/Exclude"
    labelAlign="right"
    labels="{{ ['Inclusion', 'Exclusion'][i] }}"
    placeholder="Select an option"
    showSelectionIndicator={true}
    value=""
    values="{{ item }}"
  />
  <SelectWidget
    id="terminology_select"
    events={[]}
    label="Terminology"
    placeholder="Select a value"
    values="{{load_terminologies.data.terminology}}"
  />
  <Select
    id="version_select"
    allowDeselect={true}
    allowSearch={true}
    data="{{load_terminology_versions.data.uuid}}"
    deprecatedLabels="{{load_terminology_versions.data.version}}"
    label="Version"
    labelAlign="right"
    labels="{{ self.deprecatedLabels[i] }}"
    placeholder="Select an option"
    showSelectionIndicator={true}
    value="{{load_terminology_versions.data.uuid[0]}}"
    values="{{ item }}"
  />
  <TextInput
    id="textinput1"
    _disclosedFields={{ array: [] }}
    disabled=""
    hidden={null}
    label="Description"
    labelAlign="right"
    labelWrap={true}
    maintainSpaceWhenHidden={null}
    placeholder="Enter value"
    showClear={true}
    showInEditor={null}
  />
  <SelectWidget
    id="dropdown2"
    allowCustomValues={true}
    label="Property"
    labels="['code', 'display', 'ecl (SNOMED only)', 'RxClass','has_fhir_terminology', 'include_entire_code_system', 'all_active_rxnorm', 'term_type']"
    placeholder="Select a value"
    values="['code', 'display', 'ecl', 'RxClass','has_fhir_terminology', 'include_entire_code_system', 'all_active_rxnorm', 'term_type']"
  />
  <SelectWidget
    id="dropdown3"
    label="Operator"
    placeholder="Select a value"
    values="['=', 'self-and-descendents','is-a', 'descendant-of', 'direct-child', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists', 'getClassMembers', ]"
  />
  <TextArea
    id="textinput2"
    _disclosedFields={{ array: [] }}
    autoResize={true}
    label="Value"
    labelAlign="right"
    labelWrap={true}
    minLines={2}
    placeholder="Enter value"
  />
  <ButtonWidget
    id="button1"
    disabled="{{ version_metadata.data.status == 'active'}}"
    events={[
      {
        ordered: [
          { event: "click" },
          { type: "datasource" },
          { method: "trigger" },
          { pluginId: "add_rule" },
          { params: { ordered: [] } },
          { waitType: "debounce" },
          { waitMs: "0" },
        ],
      },
      {
        ordered: [
          { event: "click" },
          { type: "widget" },
          { method: "close" },
          { pluginId: "modal1" },
          { params: { ordered: [] } },
          { waitType: "debounce" },
          { waitMs: "0" },
        ],
      },
    ]}
    value="Save New Rule"
  />
</Modal>
