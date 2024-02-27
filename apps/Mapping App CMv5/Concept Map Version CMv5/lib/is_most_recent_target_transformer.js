// Access the 'version' field from both query results
const versionFromTargetInfo = {{target_value_set_info.data.version[0]}};
const versionFromTargetInfo2 = {{target_value_set_info2.data.version[0]}};

// Check if either value is null
if (versionFromTargetInfo == null || versionFromTargetInfo2 == null) {
  return false;
}

// Compare and return the result
return versionFromTargetInfo === versionFromTargetInfo2;
