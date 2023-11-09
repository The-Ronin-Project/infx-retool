<Frame
  id="$header"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "" }, { "primary-text": "" }] }}
  type="header"
>
  <Text
    id="text1"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
    value="# {{registry_metadata.data.title}} Registry"
    verticalAlign="center"
  />
  <Text
    id="text5"
    value="Registry of {{registry_metadata.data.registry_type}} data"
    verticalAlign="center"
  />
  <Breadcrumbs
    id="breadcrumbs1"
    itemMode="static"
    value="{{ retoolContext.appUuid }}"
  >
    <Option
      id="d573a"
      appTarget="e2acd320-3ab6-11ee-987c-7f06c8ab6b06"
      itemType="custom"
      label="{{registry_metadata.data.title}} Registry"
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
                      { ordered: [{ key: "" }, { value: "" }] },
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
    <Option id="3fad6" itemType="app" label="{{get_group.data.title}} Group" />
  </Breadcrumbs>
</Frame>
