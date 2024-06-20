import 'package:flutter/material.dart';

extension TimeOfDayX on TimeOfDay {
  bool isBefore(TimeOfDay other) {
    return hour < other.hour || (hour == other.hour && minute < other.minute);
  }

  bool isAfter(TimeOfDay other) {
    return hour > other.hour || (hour == other.hour && minute > other.minute);
  }

  /// Rounds the time to the nearest quarter.
  TimeOfDay quarter() {
    final totalMinutes = hour * 60 + minute;
    final roundedMinutes = (totalMinutes / 15).round() * 15;
    final roundedHour = roundedMinutes ~/ 60;
    final roundedMinute = roundedMinutes % 60;
    return TimeOfDay(hour: roundedHour, minute: roundedMinute);
  }
}
