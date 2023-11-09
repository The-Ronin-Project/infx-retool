<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text3"
      disableMarkdown={true}
      value="{{ValuesetExpansionCall}}"
      verticalAlign="center"
    />
    <Text
      id="text2"
      disableMarkdown={true}
      value="{{ValuesetExpansionCall}}"
      verticalAlign="center"
    />
    <Text
      id="text1"
      value="{{ValuesetExpansionCall.responseText}}"
      verticalAlign="center"
    />
  </Frame>
</App>
