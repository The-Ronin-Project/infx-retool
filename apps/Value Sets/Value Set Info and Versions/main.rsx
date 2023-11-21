<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="#### {{load_vs_metadata.data.title}}"
      verticalAlign="center"
    />
    <Include src="./src/tabbedcontainer1.rsx" />
  </Frame>
</App>
