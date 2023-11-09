const hasNoMap = {{ review_queue.selectedRow.data }}.some(row => row.target_concept_code === 'No map');
return hasNoMap;
