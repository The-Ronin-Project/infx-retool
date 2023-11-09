<App>
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Container
        id="container1"
        hoistFetching={true}
        showBody={true}
        showHeader={true}
        style={{ ordered: [{ headerBackground: "rgb(159, 179, 200)" }] }}
        styleContext={{ ordered: [{ textDark: "rgb(16, 42, 67)" }] }}
      >
        <Header>
          <Text
            id="text1"
            style={{ ordered: [{ color: "rgba(16, 42, 67, 0.7)" }] }}
            value="Report a bug"
            verticalAlign="center"
          />
        </Header>
        <View id="1befa" viewKey="View 1">
          <Link
            id="link1"
            iconBefore="bold/programming-bug-alternate"
            text=" Open Jira INFXBR"
          >
            <Event
              event="click"
              method="openUrl"
              params={{
                ordered: [
                  {
                    url: "https://projectronin.atlassian.net/servicedesk/customer/portal/16/group/52/create/162",
                  },
                  { options: { ordered: [{ newTab: true }] } },
                ],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
