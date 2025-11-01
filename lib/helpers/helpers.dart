/// A single entry point to safely convert raw data structures
/// (like those from jsonDecode or a database) into a type-safe structure
/// with String keys and recursive conversion for nested maps/lists.
dynamic deepConvertData(dynamic input) {
  if (input == null) {
    return null;
  }

  // Case 1: Convert a raw Map to Map<String, dynamic>
  if (input is Map<Object?, Object?>) {
    return convertMap(input);
  }

  // Case 2: Convert a raw List
  if (input is List<Object?>) {
    // Note: convertList returns List<dynamic>, which is the safest type
    // for a list that may contain mixed types (Map, List, or primitives).
    return convertList(input);
  }

  // Case 3: Return all other types (primitives, objects, etc.) as is
  return input;
}

// --------------------------------------------------------------------------
// RECURSIVE HELPER FUNCTIONS (Your existing logic)
// --------------------------------------------------------------------------

// ignore: unintended_html_in_doc_comment
/// Recursively converts Map<Object?, Object?> to Map<String, dynamic>.
Map<String, dynamic> convertMap(Map<Object?, Object?> input) {
  return input.map((key, value) {
    // 1. Convert non-String keys to String using toString()
    final String newKey = key.toString();

    // 2. Recursively process the value
    final dynamic newValue = deepConvertData(value);

    return MapEntry(newKey, newValue);
  });
}

// ignore: unintended_html_in_doc_comment
/// Recursively converts List<Object?> to List<dynamic>.
List<dynamic> convertList(List<Object?> input) {
  return input.map((e) {
    // Recursively process each element in the list
    return deepConvertData(e);
  }).toList();
}
