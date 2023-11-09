<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Text
    id="text1"
    value="## **Value Set History Table** ##"
    verticalAlign="center"
  />
  <TableLegacy
    id="table1"
    _compatibilityMode={false}
    columnColors={{
      ordered: [
        { "": "" },
        { tabname: "" },
        { new_val: "" },
        { operation: "" },
        { i: "" },
        { old_val: "" },
        { saw: "" },
        { name: "" },
        { sales: "" },
        { time: "" },
        { sa: "" },
        { sawho: "" },
        { s: "" },
        { timestamp: "" },
        { tablename: "" },
        { id: "" },
        { table_name: "" },
        { email: "" },
        { who: "" },
      ],
    }}
    customButtonName=""
    data={
      '[{\n  "timestamp": "time",\n  "table_name": "table name",\n  "operation": "update, insert or delete",\n  "who": "user",\n  "new_val":"",\n  "old_val":"" ,\n},\n{\n  "timestamp": "time",\n  "table_name": "table name",\n  "operation": "update, insert or delete",\n  "who": "user",\n  "new_val":"",\n  "old_val":"" ,\n},\n{\n  "timestamp": "time",\n  "table_name": "table name",\n  "operation": "update, insert or delete",\n  "who": "user",\n  "new_val":"",\n  "old_val":"" ,\n}]'
    }
    doubleClickToEdit={true}
    showBoxShadow={false}
    showPaginationOnTop={true}
  />
</App>
