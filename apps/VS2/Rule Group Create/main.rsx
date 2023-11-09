<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <TextInput
      id="textInput1"
      label="Rule Group Name"
      placeholder="Enter value"
    />
    <Include src="./src/modal1.rsx" />
    <TextInput
      id="textInput2"
      label="Rule Group Descritpion"
      placeholder="Enter value"
    />
    <TableLegacy
      id="table1"
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { "": "" },
          { operator: "" },
          { e: "" },
          { irule: "" },
          { descri: "" },
          { include: "" },
          { name: "" },
          { sales: "" },
          { termVersion: "" },
          { pro: "" },
          { operato: "" },
          { oper: "" },
          { value: "" },
          { s: "" },
          { terminology: "" },
          { property: "" },
          { id: "" },
          { rule: "" },
          { email: "" },
          { description: "" },
          { operar: "" },
        ],
      }}
      customButtonName=""
      data={
        '[{\n  "rule": 1,\n  "description": "test",\n  "property": "component",\n  "operator": "in",\n  "value": "glucose",\n  "include":"true",\n  "terminology": "LOINC",\n  "termVersion": 2.73\n}]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <Switch id="library_save_switch" label="Save to Library" />
    <Button id="button2" styleVariant="solid" text="Submit New Rule Group" />
  </Frame>
</App>
