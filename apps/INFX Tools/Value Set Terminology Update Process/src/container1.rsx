<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgb(240, 244, 248)" }] }}
  styleContext={{ ordered: [{ textDark: "rgb(16, 42, 67)" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _disclosedFields={{ array: [] }}
      value="### Value Set Standings Pre-Terminology Update"
      verticalAlign="center"
    />
  </Header>
  <View id="0555a" viewKey="View 1">
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="Please select a terminology to genrate a report of Value Set standing before terminology update. The report will generate based on the most recent avaible version of the terminology in our database. The Value Sets on the 'Latest version Not active' tab require action before running an update."
      verticalAlign="center"
    />
    <Select
      id="terminology_select"
      emptyMessage="No options"
      itemMode="static"
      label="Terminology"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="6cc96" label="SNOMED" value="http://snomed.info/sct" />
      <Option id="a729f" label="LOINC" value="http://loinc.org" />
      <Option
        id="d92e2"
        label="ICD-10-CM"
        value="http://hl7.org/fhir/sid/icd-10-cm"
      />
      <Option
        id="40ccd"
        disabled={false}
        hidden={false}
        label="RxNorm"
        value="http://www.nlm.nih.gov/research/umls/rxnorm"
      />
    </Select>
    <Button
      id="genertae_report_button"
      _disclosedFields={{ array: [] }}
      disabled="{{terminology_select.value==null}}"
      styleVariant="solid"
      text="Generate Report"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="get_reports"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text5"
      _disclosedFields={{ array: [] }}
      value="The new release is version **{{get_versions.data.version[0]}}**"
      verticalAlign="center"
    />
    <Include src="./tabbedContainer1.rsx" />
  </View>
</Container>
