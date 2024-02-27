<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Text
      id="title"
      horizontalAlign="center"
      value="**Terminology View/Edit**"
      verticalAlign="center"
    />
    <Text
      id="terminology_name"
      value="**Terminology Name: {{terminology_metadata.data.terminology}}**"
      verticalAlign="center"
    />
    <Text
      id="terminology_version"
      value="**Version: {{terminology_metadata.data.version}}**"
      verticalAlign="center"
    />
    <Text
      id="terminology_fhir_uri"
      value="**FHIR URI: {{terminology_metadata.data.fhir_uri}}**"
      verticalAlign="center"
    />
    <Include src="./src/tabbedContainer1.rsx" />
  </Frame>
</App>
