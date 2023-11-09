<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TableLegacy
      id="modeling_queue"
      _compatibilityMode={false}
      columnColors={{ ordered: [{ display: "" }] }}
      customButtonName=""
      data="{{ investigational_drugs.data }}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <TextInput
      id="search_ingredient_input"
      label="Ingredient
"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="search_strength"
      label="Strength
"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="unit_select"
      data="{{ load_units.data }}"
      label="Unit"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.code }}"
    />
    <Select
      id="select_dose_form"
      data="{{ load_df.data }}"
      label="Dose Form"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.display }}"
    />
    <Alert
      id="alert1"
      buttonText="Create New Ingredient"
      description="If ingredient cannot be found in the table below, create a new ingredient "
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "save_in" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "search_ingredient" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      title=""
    />
    <Alert
      id="alert2"
      buttonText="Create New SCD Component"
      description="If strength cannot be found in the table below, create a new strength"
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "save_scdc" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      title=""
    />
    <Text id="text1" value="##### Final Components" verticalAlign="center" />
    <TableLegacy
      id="final_components"
      _columnVisibility={{
        ordered: [
          { from_rxnorm: false },
          { rxcui: false },
          { strength: false },
          { ingredient_uuid: false },
          { uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Remove" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "remove_component" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnColors={{
        ordered: [
          { uuid: "" },
          { display: "" },
          { ingredient_uuid: "" },
          { from_rxnorm: "" },
          { rxcui: "" },
          { strength: "" },
        ],
      }}
      columnWidths={[{ object: { id: "display", value: 349 } }]}
      customButtonName=""
      data="{{populate_final_components.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <TableLegacy
      id="ingredient_table"
      _columnVisibility={{ ordered: [{ uuid: false }] }}
      _compatibilityMode={false}
      columnColors={{ ordered: [{ display: "" }, { uuid: "" }] }}
      customButtonName=""
      data="{{search_ingredient.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <TableLegacy
      id="select_scdc"
      _columnVisibility={{ ordered: [{ strength: false }, { uuid: false }] }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Add Component" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "append_component" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnColors={{
        ordered: [
          { display: "" },
          { strength: "" },
          { uuid: "" },
          { id: "" },
          { name: "" },
          { email: "" },
          { sales: "" },
        ],
      }}
      columnWidths={[
        { object: { id: "sales", value: 34 } },
        { object: { id: "display", value: 354.6640625 } },
      ]}
      customButtonName=""
      data="{{load_scdc.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <Text id="text2" value="##### Final Drug" verticalAlign="center" />
    <Text
      id="final_scd_display"
      value="{{final_components.data.display.join(' / ')+' '+select_dose_form.selectedLabel}}"
      verticalAlign="center"
    />
    <Button id="save_drug" styleVariant="solid" text="Create This Drug">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_scd"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
