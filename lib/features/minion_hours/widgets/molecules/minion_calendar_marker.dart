import 'dart:math';

import 'package:flutter/material.dart';
import 'package:minions/features/minion_hours/minion_hours.dart';

class MinionCalendarMarker extends StatelessWidget {
  const MinionCalendarMarker({
    required this.events,
    required this.color,
    super.key,
  });

  final List<MinionHoursOutput> events;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var totalMins = events.fold(0, (prev, e) => prev + e.duration.inMinutes);
    final children = <Widget>[];
    while (totalMins >= Duration.minutesPerHour) {
      totalMins -= Duration.minutesPerHour;
      children.add(
        SizedBox.square(
          dimension: 4,
          child: CircularProgressIndicator(
            strokeWidth: 1,
            value: 1,
            color: color,
          ),
        ),
      );
    }
    if (totalMins > 0) {
      children.add(
        SizedBox.square(
          dimension: 4,
          child: Transform.rotate(
            angle: pi * -0.5,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              value: totalMins / 60,
            ),
          ),
        ),
      );
    }
    return Transform.translate(
      offset: const Offset(0, -6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Wrap(
          runSpacing: 2,
          spacing: 2,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
