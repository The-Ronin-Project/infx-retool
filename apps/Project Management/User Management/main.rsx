<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Form
      id="user_management"
      disabled="{{first_name_input.value == null || last_name_input.value == null}}"
      heightType="fixed"
      hidden={null}
      hoistFetching={true}
      maintainSpaceWhenHidden={null}
      overflowType="hidden"
      requireValidation={true}
      showBody={true}
      showInEditor={null}
    >
      <Body>
        <Text
          id="text2"
          disableMarkdown={true}
          style={{ ordered: [{ color: "rgb(159, 179, 200)" }] }}
          value="Browse, edit, or add new user."
          verticalAlign="center"
        />
        <Modal
          id="add_user_modal"
          buttonText="Add a New User"
          style={{
            ordered: [
              { "primary-surface": "rgb(240, 244, 248)" },
              { "accent-background": "rgb(98, 176, 232)" },
              { "primary-text": "rgb(240, 244, 248)" },
            ],
          }}
        >
          <Include src="./src/container1.rsx" />
        </Modal>
        <TableLegacy
          id="current_users"
          _columns={[
            "id",
            "name",
            "email",
            "sales",
            "user_id",
            "first_name",
            "last_name",
            "first_last_name",
            "uuid",
          ]}
          _columnVisibility={{
            ordered: [
              { first_last_name: true },
              { name: true },
              { sales: true },
              { user_id: false },
              { last_name: true },
              { first_name: true },
              { id: true },
              { uuid: true },
              { email: true },
            ],
          }}
          _unfilteredSelectedIndex=""
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { first_last_name: "" },
              { name: "" },
              { sales: "" },
              { user_id: "" },
              { last_name: "" },
              { first_name: "" },
              { id: "" },
              { uuid: "" },
              { email: "" },
            ],
          }}
          columnEditable={{
            ordered: [
              { first_name: true },
              { last_name: true },
              { first_last_name: true },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { first_name: "First name" },
              { last_name: "Last name" },
              { first_last_name: "First and Last name" },
            ],
          }}
          columns={[
            "id",
            "name",
            "email",
            "sales",
            "user_id",
            "first_name",
            "last_name",
            "first_last_name",
            "uuid",
          ]}
          columnVisibility={{
            ordered: [
              { first_last_name: true },
              { name: true },
              { sales: true },
              { user_id: false },
              { last_name: true },
              { first_name: true },
              { id: true },
              { uuid: true },
              { email: true },
            ],
          }}
          columnWidths={[
            { object: { id: "first_last_name", value: 236.96087646484375 } },
            { object: { id: "last_name", value: 231.96090698242188 } },
            { object: { id: "first_name", value: 207.46096801757812 } },
          ]}
          customButtonName=""
          data="{{load_users.data}}"
          overflowType="scroll"
          pageSize={8}
          showColumnBorders={true}
          showPaginationOnTop={true}
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="user_management"
          text="Submit"
        />
        <Button
          id="formButton2"
          submit={true}
          submitTargetId="user_management"
          text="Submit"
        />
      </Footer>
    </Form>
  </Frame>
</App>
