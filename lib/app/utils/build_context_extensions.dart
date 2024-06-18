import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension BuildContextX on BuildContext {
  ShadThemeData get theme => ShadTheme.of(this);
  ShadTextTheme get textTheme => theme.textTheme;
  ShadColorScheme get colorScheme => theme.colorScheme;
  ShadToasterState get toaster => ShadToaster.of(this);
}
