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
    data="['Manual', 'CPT', 'LOINC']"
    label="Rule Type"
    labels="{{ _.startCase(item) }}"
    showSelectionIndicator={true}
    value="'Manual'"
    values="{{ item }}"
  >
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
    label="Terminology"
    placeholder="Select a value"
    values="{{load_terminologies.data.terminology}}"
  />
  <TextInput
    id="textinput1"
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
  <Select
    id="select_source"
    allowDeselect={true}
    allowSearch={true}
    data="{{getSourcesofDrugClassRelations.data.relaSourceList.relaSourceName}}"
    label="Select classification source"
    labels="{{ _.startCase(item) }}"
    labelWrap={true}
    placeholder="Select an option"
    showSelectionIndicator={true}
    values="{{ item }}"
  />
  <TextInput
    id="ClassID"
    label="Enter Drug Class ID"
    placeholder="Enter value"
  />
  <Select
    id="select_rela"
    allowDeselect={true}
    allowSearch={true}
    data="{{getRelas.data.relaList.rela}}"
    label="Select relationship (optional)"
    labels="{{ _.startCase(item) }}"
    labelWrap={true}
    placeholder="Select an option"
    showSelectionIndicator={true}
    values="{{ item }}"
  />
  <Multiselect
    id="term_type"
    allowSearch={true}
    data="{{getTermTypes.data.termTypeList.termType}}"
    label="Excluded Term Types (optional)"
    labels="{{ _.startCase(item) }}"
    labelWrap={true}
    placeholder="Select multiple options"
    showSelectionIndicator={true}
    values="{{ item }}"
    wrapTags={true}
  />
  <Select
    id="select2"
    allowDeselect={true}
    allowSearch={true}
    data="['0','1']"
    deprecatedLabels=""
    label="Hierarchy Depth (optional) "
    labels="{{ ['Direct', 'Indirect (Descendents of Descendents...)'][i] }}"
    labelWrap={true}
    placeholder="Select an option"
    showSelectionIndicator={true}
    value="'Indirect - all descendants'"
    values="{{ item }}"
  />
  <Button
    id="button1"
    disabled="{{ version_metadata.data.status == 'active'}}"
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    text="Save New Rule"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="add_rule"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
