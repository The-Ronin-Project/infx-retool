<Container
  id="container2"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle2"
      _disclosedFields={{ array: [] }}
      value="#### Create New Terminology or Code System"
      verticalAlign="center"
    />
    <TextInput
      id="new_name2"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Terminology"
      placeholder="Enter Name"
      required={true}
      showClear={true}
    />
    <TextInput
      id="version2"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Version"
      placeholder="Enter New Version"
      required={true}
      value="1.0"
    />
    <DateRange
      id="date_range2"
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
      id="fhir_uri2"
      _disclosedFields={{ array: [] }}
      label="FHIR uri*"
      placeholder="Enter http://"
    />
    <Text
      id="text7"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(38, 38, 38, 0.37)" }] }}
      value="//projectronin.io/fhir/CodeSystem/{tenant ID}/{data model element}"
      verticalAlign="center"
    />
    <Link
      id="organization_id_link3"
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
      id="is_standard3"
      _disclosedFields={{ array: [] }}
      label="Standard Terminology"
    />
    <Checkbox
      id="is_fhir3"
      _disclosedFields={{ array: [] }}
      label="FHIR Terminology"
    />
  </Header>
  <View id="aa62f" viewKey="View 1">
    <Button
      id="add_version2"
      _disclosedFields={{ array: [] }}
      disabled={
        '{{fhir_uri2.value == "" || date_rangeOLD.value == "" || check_existing_row_fhir_uri_and_version.data.count[0] > 0}}\n\n\n'
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
