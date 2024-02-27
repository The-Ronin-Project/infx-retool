selected_ranges.setValue(
  selected_ranges.value.concat(
    [
      {
        'category_name': category_2_options.data.category_name[category_2_options.data.category_name.indexOf(category_2_select.value)],
        'range': category_2_options.data.range[category_2_options.data.category_name.indexOf(category_2_select.value)]
    	}
    ]
  )
);