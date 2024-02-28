<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      value="Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title[0].trim()}}**"
      verticalAlign="center"
    />
    <Include src="./src/tabbedcontainer1.rsx" />
  </Frame>
</App>
