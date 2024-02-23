switch(mapping_group_select.value) {
  case 'rejected':
    return load_rejected_queue.data;
  default:
    return load_queue.data;
}