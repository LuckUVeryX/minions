extension DateTimeX on DateTime {
  DateTime firstDayOfMonth() {
    return DateTime(year, month);
  }

  DateTime toDay() {
    return DateTime(year, month, day);
  }

  DateTime dayEnd() {
    return DateTime(year, month, day, 23, 59, 59, 999, 999);
  }
}
