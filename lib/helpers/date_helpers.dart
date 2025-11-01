DateTime parseDate(dynamic value) {
  if (value == null) return DateTime.now();

  // If it's already a DateTime
  if (value is DateTime) return value;

  // Firestore Timestamp-like object
  if (value is Map && value.containsKey('_seconds')) {
    final seconds = value['_seconds'] as int;
    final nanos = (value['_nanoseconds'] ?? 0) as int;
    return DateTime.fromMillisecondsSinceEpoch(
      seconds * 1000 + nanos ~/ 1000000,
    );
  }

  // ISO8601 string
  if (value is String) {
    return DateTime.tryParse(value) ?? DateTime.now();
  }

  // Fallback
  return DateTime.now();
}
