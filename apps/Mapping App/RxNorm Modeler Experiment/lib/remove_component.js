let newValue = selected_component.value;
let indexToRemove = newValue.indexOf(final_components.selectedRow.data.uuid);
newValue.splice(indexToRemove, 1);
selected_component.setValue(newValue);
