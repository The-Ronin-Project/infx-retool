<Modal
  id="modal1"
  buttonText="Add New Synonym"
  modalHeight="400xp"
  style={{
    ordered: [
      { "accent-background": "rgb(159, 179, 200)" },
      { "primary-text": "rgb(51, 78, 104)" },
      { "primary-surface": "rgb(240, 244, 248)" },
      { "accent-foreground": "rgb(240, 244, 248)" },
    ],
  }}
>
  <Text
    id="text5"
    value="Add new synonym for **{{concept_map_metadata_table.selectedRow.data.title}}**"
    verticalAlign="center"
  />
  <TextInput
    id="synonym_context_input"
    label="Context (machine-readable)"
    labelPosition="top"
    pattern="^\w+$"
    patternType="regex"
    placeholder="Enter value"
    required={true}
  />
  <TextInput
    id="synonym_synonym_input"
    label="Synonym"
    labelPosition="top"
    placeholder="Enter value"
    required={true}
  />
  <Button
    id="button2"
    style={{
      ordered: [
        { background: "rgb(159, 179, 200)" },
        { label: "rgb(240, 244, 248)" },
      ],
    }}
    styleVariant="solid"
    text="Save"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="new_synonym"
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
