<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="user_select"
      data="{{ getUsers.data }}"
      label="User"
      labels="{{item.first_last_name}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.user_uuid}}"
    />
    <Select
      id="ingredient_search"
      captionByIndex=""
      colorByIndex=""
      data="{{ Ingredients.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Search for Ingredient(s)"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item }}"
    />
    <TextInput
      id="strength_unit"
      label="Strength Unit"
      placeholder="Enter value (e.g. MG, MG/ML)"
    />
    <TableLegacy
      id="modeling_queue"
      _compatibilityMode={false}
      customButtonName=""
      data="{{ load_queue.data }}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <TextInput
      id="strength_value"
      label="Strength Numerical Value"
      placeholder="Enter value (e.g. 300)"
    />
    <Text
      id="text2"
      value="**Ingredient(s) not found above? Create a new ingredient concept below** "
      verticalAlign="center"
    />
    <TextInput
      id="ingredient"
      label="First Ingredient Name"
      placeholder="Enter value"
    />
    <TextInput
      id="strength_value3"
      label="Strength Numerical Value"
      placeholder="Enter value (e.g. 300)"
    />
    <TextInput
      id="strength_unit3"
      label="Strength Unit"
      placeholder="Enter value (e.g. MG, MG/ML)"
    />
    <TextInput
      id="ingredient2"
      label="Second Ingredient Name (optional)"
      placeholder="Enter value"
    />
    <TextInput
      id="strength_value2"
      label="Strength Numerical Value (optional)"
      placeholder="Enter value (e.g. 300)"
    />
    <TextInput
      id="strength_unit2"
      label="Strength Unit (optional)"
      placeholder="Enter value (e.g. MG, MG/ML)"
    />
    <Button
      id="save_in_button"
      styleVariant="solid"
      text="Save IN/MIN Concept"
    />
    <Select
      id="dose_form_select"
      captionByIndex=""
      colorByIndex=""
      data="{{ Dose_form_and_dose_form_group.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Dose Form"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item }}"
    />
    <TextInput
      id="new_dose_form"
      label="Dose form not found above?
"
      placeholder="Type in label of new dose form"
    />
    <Button
      id="save_df_button"
      styleVariant="solid"
      text="Save New Dose Form"
    />
    <Button id="save_scd_button" styleVariant="solid" text="Save SCD Concept" />
    <Text
      id="scd_display"
      value="Full Name: Ingredient + Strength + Dose Form "
      verticalAlign="center"
    />
  </Frame>
</App>
