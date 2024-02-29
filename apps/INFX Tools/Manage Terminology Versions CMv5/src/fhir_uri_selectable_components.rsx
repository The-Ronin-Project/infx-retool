<Container
  id="fhir_uri_selectable_components"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle3"
      horizontalAlign="center"
      value="##### FHIR URI Selectable Components"
      verticalAlign="center"
    />
  </Header>
  <View id="7e5e0" viewKey="View 1">
    <Select
      id="tenant_id"
      disabled="{{is_standard.value || is_fhir.value}}  "
      emptyMessage="No options"
      itemMode="static"
      label="Tenant ID"
      labelAlign="right"
      overlayMaxHeight={375}
      placeholder="Select a tenant"
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option id="69c62" label="App Orchard Sandbox" value="apposnd" />
      <Option id="44e4e" label="Cerner Code Sandbox" value="ejh3j95h" />
      <Option id="cc3a1" label="mdaoc" value="mdaoc" />
      <Option
        id="590af"
        disabled={false}
        hidden={false}
        label="mda-tst"
        value="5jzj62vp"
      />
      <Option
        id="d02d5"
        disabled={false}
        hidden={false}
        label="p1941"
        value="ggwadc8y"
      />
      <Option
        id="0424c"
        disabled={false}
        hidden={false}
        label="psj"
        value="v7r1eczk"
      />
      <Option
        id="05708"
        disabled={false}
        hidden={false}
        label="psj-tst"
        value="1xrekpx5"
      />
      <Option id="10366" disabled={false} hidden={false} value="ronin" />
      <Option id="13470" disabled={false} hidden={false} value="ronincer" />
      <Option id="b8af1" disabled={false} hidden={false} value="roninstg" />
    </Select>
    <Link
      id="organization_id_link2"
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
    <Select
      id="fhir_resource"
      data="{{ get_resource_types.data }}"
      disabled="{{is_standard.value || is_fhir.value}} "
      emptyMessage="No options"
      label="FHIR Resource"
      labelAlign="right"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      overlayMinWidth="600"
      placeholder="Select a resource"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="fhir_element"
      disabled="{{is_standard.value || is_fhir.value}} "
      emptyMessage="No options"
      itemMode="static"
      label="FHIR Element"
      labelAlign="right"
      overlayMaxHeight={375}
      placeholder="Select an element"
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option id="69c62" value="Category" />
      <Option id="44e4e" value="Class" />
      <Option id="cc3a1" value="Code" />
      <Option
        id="28c22"
        disabled={false}
        hidden={false}
        label="ComponentCode"
        value="ComponentCode"
      />
      <Option
        id="af997"
        disabled={false}
        hidden={false}
        value="CodeAndComponentCode"
      />
      <Option
        id="85129"
        disabled={false}
        hidden={false}
        value="Interpretation"
      />
      <Option
        id="7986c"
        disabled={false}
        hidden={false}
        label="ComponentInterpretation"
        value="ComponentInterpretation"
      />
      <Option
        id="47979"
        disabled={false}
        hidden={false}
        value="InterpretationAndComponentInterpretation"
      />
      <Option id="292f0" disabled={false} hidden={false} value="Status" />
      <Option
        id="26256"
        disabled={false}
        hidden={false}
        value="TelecomSystem"
      />
      <Option id="7d79a" disabled={false} hidden={false} value="TelecomUse" />
      <Option id="b1ca0" disabled={false} hidden={false} value="Type" />
      <Option
        id="62600"
        disabled={false}
        hidden={false}
        value="ValueCodeableConcept"
      />
      <Option
        id="26ed0"
        disabled={false}
        hidden={false}
        value="ComponentValueCodeableConcept"
      />
      <Option
        id="df2d7"
        hidden="false


"
        value="ValueCodeableConceptAndComponentValueCodeableConcept"
      />
    </Select>
  </View>
</Container>
