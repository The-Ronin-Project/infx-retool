<Frame
  id="$header"
  sticky={true}
  style={{
    ordered: [
      { "primary-surface": "rgb(188, 204, 220)" },
      { "primary-text": "rgba(16, 42, 67, 0.8)" },
      { "accent-background": "rgba(248, 249, 255, 1)" },
    ],
  }}
  type="header"
>
  <Text
    id="text60"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
    value=" ### **INFX Applications**"
    verticalAlign="center"
  />
  <Text
    id="user"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(98, 125, 152)" }] }}
    value="**{{ current_user.fullName }}**"
    verticalAlign="center"
  />
</Frame>
