<Modal
  id="modal1"
  buttonText="Add Rule"
  disabled="{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}"
  events={[]}
>
  <Select
    id="rule_interface_link"
    allowDeselect={true}
    allowSearch={true}
    data="['Manual', 'CPT','ICD-10 CM', 'LOINC']"
    itemMode="static"
    label="Rule Type"
    labels="{{ _.startCase(item) }}"
    showSelectionIndicator={true}
    value="'Manual'"
    values="{{ item }}"
  >
    <Option id="ce564" disabled={false} hidden={false} value="Manual" />
    <Option id="c0788" disabled={false} hidden={false} value="CPT" />
    <Option id="dce87" disabled={false} hidden={false} value="ICD-10 CM" />
    <Option id="8d0cf" disabled={false} hidden={false} value="LOINC" />
    <Option id="7add0" disabled={false} hidden={false} value="RxNorm" />
    <Option id="1e843" disabled={false} hidden={false} value="ICD-10 PCS" />
    <Option
      id="1bed9"
      disabled={false}
      hidden={false}
      label="FHIR"
      value="FHIR"
    />
    <Event
      enabled="{{rule_interface_link.value=='LOINC'}}"
      event="change"
      method="openApp"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { newTab: true },
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "vs_version_uuid" },
                        { value: "{{urlparams.uuid}}" },
                      ],
                    },
                  ],
                },
              ],
            },
          },
          { uuid: "7bd3eb40-82ff-11ec-8d5b-372c3492a848" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{rule_interface_link.value== 'CPT'}}"
      event="change"
      method="openApp"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { newTab: true },
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "vs_version_uuid" },
                        { value: "{{urlparams.uuid}}" },
                      ],
                    },
                  ],
                },
              ],
            },
          },
          { uuid: "c887fbc0-839a-11ec-a584-93809bc5e41b" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{rule_interface_link.value== 'ICD-10 CM'}}"
      event="change"
      method="openApp"
      params={{
        ordered: [
          { uuid: "49aa2020-ab8c-11ec-840f-e3e83a5795f2" },
          {
            options: {
              ordered: [
                { newTab: true },
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "'value_set_version'" },
                        { value: "{{urlparams.uuid}}" },
                      ],
                    },
                  ],
                },
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
      enabled="{{rule_interface_link.value== 'RxNorm'}}"
      event="change"
      method="openApp"
      params={{
        ordered: [
          { uuid: "5593da60-b510-11ec-ac15-97fd20062a3c" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "value_set_version" },
                        { value: "{{urlparams.uuid}}" },
                      ],
                    },
                  ],
                },
                { newTab: true },
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
      enabled="{{rule_interface_link.value== 'ICD-10 PCS'}}"
      event="change"
      method="openApp"
      params={{
        ordered: [
          { uuid: "abad41e0-9e7a-11ec-abe4-eface3d2ac5d" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "'value_set_version'" },
                        { value: "{{urlparams.uuid}}" },
                      ],
                    },
                  ],
                },
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
      enabled="{{rule_interface_link.value== 'FHIR'}}"
      event="change"
      method="openApp"
      params={{
        ordered: [
          { uuid: "0778f280-28d7-11ed-b5ea-173d17b41745" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "'value_set_version'" },
                        { value: "{{urlparams.uuid}}" },
                      ],
                    },
                  ],
                },
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
  </Select>
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
