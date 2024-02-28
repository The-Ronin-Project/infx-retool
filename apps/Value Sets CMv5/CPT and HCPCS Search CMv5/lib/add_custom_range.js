selected_ranges.setValue(
  selected_ranges.value.concat(
    [
      {
        'category_name': custom_range_name.value,
        'range': range_start.value + '-' + range_end.value
      }
    ]
  )
);