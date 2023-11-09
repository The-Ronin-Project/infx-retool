<Modal
  id="AddGroupMember"
  buttonText="Add Group Member"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "widget" },
        { method: null },
        { pluginId: "" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  modalHeight="400"
  modalWidth="50%"
  style={{ ordered: [{ "primary-surface": "rgb(240, 244, 248)" }] }}
>
  <Text id="text7" value="#### Add Group Member" verticalAlign="center" />
  <Select
    id="value_set_select"
    data="{{ value_set_query.data }}"
    emptyMessage="No options"
    label="Value Set"
    labels="{{ item.title }}"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
    values="{{ item.uuid }}"
  />
  <TextInput
    id="product_label_input"
    label="Product Title"
    placeholder="Enter value"
    showClear={true}
  />
  <TextInput
    id="ref_range_high_input"
    hidden="{{registry_metadata.data.registry_type!='vitals'}}"
    label="Reference range high"
    placeholder="Enter value"
    showClear={true}
  />
  <TextInput
    id="ref_range_low_input"
    hidden="{{registry_metadata.data.registry_type!='vitals'}}"
    label="Reference range low"
    placeholder="Enter value"
    showClear={true}
  />
  <TextInput
    id="ucum_ref_units_input"
    hidden="{{registry_metadata.data.registry_type != 'vitals'}}"
    label="UCUM reference units"
    placeholder="Enter value"
    showClear={true}
  />
  <Button
    id="add_to_group_button"
    disabled="{{ !/^[0-9]*\.?[0-9]*$/.test(ref_range_high_input.value) | !/^[0-9]*\.?[0-9]*$/.test(ref_range_low_input.value) }}
"
    styleVariant="solid"
    text="Add Member to Group"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="add_group_member"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="AddGroupMember"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
