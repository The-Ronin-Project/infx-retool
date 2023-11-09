<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      _disclosedFields={{ array: [] }}
      value="#### Create New Terminology or Code System"
      verticalAlign="center"
    />
    <TextInput
      id="new_name"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Terminology"
      placeholder="Enter Name"
      required={true}
      showClear={true}
    />
    <TextInput
      id="version"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Version"
      placeholder="Enter New Version"
      required={true}
      value="1.0"
    />
    <DateRange
      id="date_range"
      _disclosedFields={{ array: [] }}
      dateFormat="MMM d, yyyy"
      endPlaceholder="Effective End"
      hideLabel={false}
      iconBefore="bold/interface-calendar-remove"
      label="Effective Dates*"
      startPlaceholder="Effective Start"
      textBetween="-"
      value={{ ordered: [{ start: "" }, { end: "" }] }}
    />
    <TextInput
      id="fhir_uri"
      _disclosedFields={{ array: [] }}
      label="FHIR uri*"
      placeholder="Enter http://"
    />
    <Text
      id="text5"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(38, 38, 38, 0.37)" }] }}
      value="//projectronin.io/fhir/CodeSystem/{tenant ID}/{data model element}"
      verticalAlign="center"
    />
    <Link
      id="organization_id_link"
      _disclosedFields={{ array: [] }}
      text="Link: Organization IDs"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            { options: { ordered: [{ newTab: true }] } },
            {
              url: "https://projectronin.atlassian.net/wiki/spaces/ENG/pages/1737556005/Organization+Ids",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Checkbox
      id="is_fhir"
      _disclosedFields={{ array: [] }}
      label="FHIR Terminology"
    />
    <Checkbox
      id="is_standard"
      _disclosedFields={{ array: [] }}
      label="Standard Terminology"
    />
  </Header>
  <View id="aa62f" viewKey="View 1">
    <Button
      id="add_version"
      _disclosedFields={{ array: [] }}
      disabled={
        '{{fhir_uri.value == "" || date_range.value == "" || check_existing_row_fhir_uri_and_version.data.count[0] > 0}}\n\n\n'
      }
      styleVariant="solid"
      submitTargetId=""
      text="Add Terminology Version"
      tooltipText="Version and FHIR uri are required. The combination of version and FHIR uri shall be novel."
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="add_new_terminology"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
