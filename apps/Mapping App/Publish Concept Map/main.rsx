<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Alert
      id="alert1"
      description="To make changes, create a new version"
      hidden="{{!(load_metadata.data.status == 'active' || load_metadata.data.status == 'retired')}}"
      title="{{load_metadata.data.title}} is already published"
      type="success"
    />
    <Button
      id="publish"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      hidden="{{!(current_user.groups.map(group => group.name).includes('INFX'))}}"
      styleVariant="solid"
      text="Publish {{load_metadata.data.title}}, Version {{load_metadata.data.version}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="publish_concept_map"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
