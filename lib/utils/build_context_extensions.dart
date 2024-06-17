import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension BuildContextX on BuildContext {
  ShadThemeData get theme => ShadTheme.of(this);
  ShadTextTheme get textTheme => theme.textTheme;
}
