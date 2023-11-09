<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Include src="./src/container1.rsx" />
    <Container
      id="container3"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Rule Group Output"
          verticalAlign="center"
        />
      </Header>
      <View id="98411" viewKey="View 1">
        <Text
          id="text7"
          value="This rule group contains 2,456 codes from SNOMED CT 2022-09-01 and 345 codes from LOINC 2.73

Initially, 3,000 codes met the inclusion criteria. 500 were then excluded. 

A code must satisfy ALL inclusion criteria to be included in the output; if a code meets ANY exclusion criteria, it will be removed.

You can explore the full output of this rule group below."
          verticalAlign="center"
        />
        <Include src="./src/tabbedContainer1.rsx" />
      </View>
    </Container>
    <Note
      id="comment1"
      evaluatedKey="rule-group-{{urlparams.rule_group_uuid}}"
      label="Comments on Rule Group (SNOMED)"
    />
  </Frame>
</App>
