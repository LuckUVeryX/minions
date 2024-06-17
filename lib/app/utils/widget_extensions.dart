import 'package:flutter/material.dart';

extension ListWidgetX on List<Widget> {
  List<Widget> insertBetween(Widget separator) {
    if (isEmpty) return this;
    final result = <Widget>[];
    for (var i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) {
        result.add(separator);
      }
    }
    return result;
  }
}
