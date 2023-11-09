<Modal id="modal1" buttonText="Open Modal" hidden="true">
  <Text
    id="text1"
    value="****{{review_queue.selectedRow.data['0'].display}}****"
    verticalAlign="center"
  />
  <KeyValueMap
    id="detailed_rxnorm_info"
    data="{{getInfo.data.rxtermsProperties}}"
    prevRowFormats={{ ordered: [] }}
    prevRowMappers={{ ordered: [] }}
    rows={[
      "a",
      "b",
      "c",
      "statusCode",
      "error",
      "message",
      "data",
      "metadata",
      "rxtermsProperties",
      "brandName",
      "synonym",
      "fullName",
      "fullGenericName",
      "displayName",
      "strength",
      "rxnormDoseForm",
      "rxtermsDoseForm",
      "route",
      "termType",
      "rxcui",
      "genericRxcui",
      "suppress",
    ]}
    rowVisibility={{
      ordered: [
        { strength: true },
        { a: true },
        { b: true },
        { rxtermsDoseForm: false },
        { c: true },
        { rxnormDoseForm: true },
        { termType: true },
        { message: true },
        { error: true },
        { route: false },
        { data: true },
        { displayName: true },
        { metadata: true },
        { rxcui: true },
        { brandName: true },
        { fullGenericName: false },
        { rxtermsProperties: true },
        { suppress: false },
        { fullName: true },
        { genericRxcui: false },
        { synonym: false },
        { statusCode: true },
      ],
    }}
  />
  <TextArea
    id="review_comment"
    autoResize={true}
    label="Review Comment
"
    labelPosition="top"
    minLines={2}
    placeholder="Enter value"
  />
  <Button
    id="button2"
    style={{ ordered: [{ background: "danger" }] }}
    styleVariant="solid"
    text="Reject"
  />
  <Button
    id="button1"
    style={{ ordered: [{ background: "success" }] }}
    styleVariant="solid"
    text="Accept "
  />
</Modal>
