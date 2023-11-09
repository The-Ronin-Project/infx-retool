<Frame id="$header" sticky={true} type="header">
  <Text
    id="text4"
    value="**Choose a terminology resource to post to the Ronin Common FHIR Model Simplifier project:**"
    verticalAlign="center"
  />
  <Modal id="modal1" buttonText="Open Modal" hidden="true">
    <Text
      id="text6"
      value="### Supreme Garbanzo update initiated"
      verticalAlign="center"
    />
    <Image
      id="image2"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      src="https://images.cutco.com/learn/2018/Chickpeas-l.jpg"
    />
  </Modal>
  <Tabs
    id="tabs1"
    itemMode="static"
    navigateContainer={true}
    targetContainerId="Send_expanded_ValueSet_to_Simplifier"
    value="{{ self.values[0] }}"
  >
    <Option id="739f8" value="Tab 1" />
    <Option id="137ff" value="Tab 2" />
    <Option id="48625" value="Tab 3" />
  </Tabs>
  <Include src="./src/Send_expanded_ValueSet_to_Simplifier.rsx" />
</Frame>
