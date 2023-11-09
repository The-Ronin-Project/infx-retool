<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "rgb(217, 226, 236)" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      style={{ ordered: [{ color: "rgb(16, 42, 67)" }, { background: "" }] }}
      value="#### New user"
      verticalAlign="center"
    />
  </Header>
  <View id="bab36" viewKey="View 1">
    <TextInput
      id="first_name_input"
      label="First Name"
      placeholder="Enter value"
      style={{
        ordered: [
          { text: "rgb(98, 125, 152)" },
          { sharedLabel: "rgb(72, 101, 129)" },
        ],
      }}
    />
    <TextInput
      id="last_name_input"
      label="Last Name"
      placeholder="Enter value"
      style={{
        ordered: [
          { sharedLabel: "rgb(72, 101, 129)" },
          { text: "rgb(98, 125, 152)" },
        ],
      }}
    />
    <Text
      id="text1"
      style={{ ordered: [{ color: "rgb(130, 154, 177)" }] }}
      value="User's full name is {{first_name_input.value}} {{last_name_input.value}}"
      verticalAlign="center"
    />
    <Button
      id="save_new_user_button"
      disabled="{{first_name_input.value == '' || last_name_input.value == ''}}"
      style={{
        ordered: [
          { background: "rgb(98, 176, 232)" },
          { label: "rgb(240, 244, 248)" },
        ],
      }}
      styleVariant="solid"
      text="Save New User"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_new_user"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
