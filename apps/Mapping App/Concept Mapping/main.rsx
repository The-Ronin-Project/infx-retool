<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="map_assignee"
      allowDeselect={true}
      allowSearch={true}
      data="{{user_selection.data.uuid}}"
      deprecatedLabels="{{user_selection.data.first_last_name}}"
      label="Assignee"
      labels="{{ self.deprecatedLabels[i] }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{auto_populate_user_selection.data.uuid['0']}}"
      values="{{ item }}"
    />
    <Include src="./src/mapper.rsx" />
  </Frame>
</App>
