extension DurationX on Duration {
  /// Returns the duration in hours and minutes.
  String toHm() {
    final h = inHours;
    final m = inMinutes % 60;
    return '${h}h:${m.toString().padLeft(2, '0')}m';
  }
}
