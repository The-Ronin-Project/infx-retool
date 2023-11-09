<Modal
  id="edit_group_member_modal"
  buttonText="edit group member"
  hidden="true"
  modalHeight="300"
  style={{
    ordered: [
      { "accent-foreground": "" },
      { "primary-surface": "rgb(240, 244, 248)" },
    ],
  }}
>
  <Text id="text4" value="#### Edit Group Member" verticalAlign="center" />
  <TextInput
    id="title_input"
    label="Title"
    placeholder="Enter value"
    style={{ ordered: [{ background: "" }, { adornmentBackground: "" }] }}
    value="{{group_member_table.selectedRow.title}}"
  />
  <TextInput
    id="ref_high_input"
    hidden={'{{registry_metadata.data.registry_type != "vitals"}}'}
    label="Refrenece Range High"
    placeholder="Enter value"
  />
  <TextInput
    id="ref_low_input"
    hidden={'{{registry_metadata.data.registry_type != "vitals"}}'}
    label="Reference Range Low"
    placeholder="Enter value"
  />
  <TextInput
    id="ucum_ref_units_input2"
    hidden={'{{registry_metadata.data.registry_type != "vitals"}}'}
    label="UCUM Reference Units"
    placeholder="Enter value"
  />
  <Button
    id="save_edit_button"
    hidden="{{ !/^[0-9]*\.?[0-9]*$/.test(ref_high_input.value) | !/^[0-9]*\.?[0-9]*$/.test(ref_low_input.value) }}"
    styleVariant="solid"
    text="Save"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="edit_group_member"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
