<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Text
        id="text1"
        value="# {{metadata.data.title}} "
        verticalAlign="center"
      />
      <Text
        id="text2"
        value="Registry of {{metadata.data.registry_type}} data"
        verticalAlign="center"
      />
      <Navigation id="navigation1" itemMode="static">
        <Option
          id="664ae"
          appTarget="e2acd320-3ab6-11ee-987c-7f06c8ab6b06"
          itemType="custom"
          label="View and Edit Registry"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "e2acd320-3ab6-11ee-987c-7f06c8ab6b06" },
                {
                  options: {
                    ordered: [
                      {
                        queryParams: [
                          {
                            ordered: [
                              { key: "registry_uuid" },
                              { value: "{{urlparams.registry_uuid}}" },
                            ],
                          },
                        ],
                      },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="c7ce7"
          appTarget="72c90660-478a-11ee-ba7b-53e02fe6481c"
          itemType="custom"
          label="Preview and Publish"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "72c90660-478a-11ee-ba7b-53e02fe6481c" },
                {
                  options: {
                    ordered: [
                      {
                        queryParams: [
                          {
                            ordered: [
                              { key: "registry_uuid" },
                              { value: "{{urlparams.registry_uuid}}" },
                            ],
                          },
                        ],
                      },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
      </Navigation>
    </ModuleContainerWidget>
  </Frame>
</App>
