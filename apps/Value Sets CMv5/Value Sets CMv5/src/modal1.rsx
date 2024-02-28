<Modal
  id="modal1"
  buttonText="Add New Synonym"
  style={{
    ordered: [
      { "accent-background": "rgb(159, 179, 200)" },
      { "accent-foreground": "rgb(240, 244, 248)" },
    ],
  }}
>
  <Text
    id="text5"
    value="Add new synonym for **{{vs_metadata_table.selectedRow.data.title}}**"
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
    style={{ ordered: [{ background: "#3c92dc" }] }}
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
