<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" paddingType="normal" sticky={false} type="main">
    <Include src="./src/tabbedcontainer1.rsx" />
    <Switch
      id="test_content_switch"
      label="Show experimental/testing content"
    />
  </Frame>
</App>
