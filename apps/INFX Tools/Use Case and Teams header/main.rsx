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
      <Link
        id="link1"
        iconBefore="line/interface-arrows-turn-backward"
        text="Dashboard"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [{ uuid: "3b52c88c-6488-11ed-b9e7-8f03ff165179" }],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Link>
      <Navigation
        id="navigation1"
        itemMode="static"
        style={{
          ordered: [
            { highlightText: "" },
            { highlightBackground: "" },
            { color: "rgb(16, 42, 67)" },
            { hoverText: "" },
            { pillRadius: "" },
            { background: "" },
            { dropdownBorderRadius: "" },
            { dropdownHoverText: "" },
            { dropdownHoverBackground: "" },
            { dropdownBorder: "" },
            { dropdownText: "" },
            { dropdownBackground: "" },
          ],
        }}
      >
        <Option
          id="76e7b"
          appTarget="e727eb80-1cdc-11ee-8b3b-57cb4117df38"
          itemType="app"
        />
        <Option
          id="f64d9"
          appTarget="6f2eba40-25ac-11ee-ad7c-ef2fb33a5ea0"
          itemType="app"
        />
      </Navigation>
    </ModuleContainerWidget>
  </Frame>
</App>
