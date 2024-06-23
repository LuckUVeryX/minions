import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: ColorPrinter(),
  output: ConsoleLogOutput(),
);

class LogObserver extends ProviderObserver {
  const LogObserver();

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final providerName = provider.name ?? provider.runtimeType.toString();

    if (newValue is! AsyncValue) {
      logger.d('[$providerName]\n$newValue');
      return;
    }

    switch (newValue) {
      case AsyncError(:final error, :final stackTrace):
        logger.e('[$providerName]', error: error, stackTrace: stackTrace);
    }
  }
}

class ColorPrinter extends LogPrinter {
  ColorPrinter();

  static final levelColors = {
    Level.trace: AnsiColor.fg(AnsiColor.grey(0.5)),
    Level.debug: const AnsiColor.none(),
    Level.info: const AnsiColor.fg(12),
    Level.warning: const AnsiColor.fg(208),
    Level.error: const AnsiColor.fg(196),
    Level.fatal: const AnsiColor.fg(199),
  };

  @override
  List<String> log(LogEvent event) {
    final messageStr = _stringifyMessage(event.message);
    final errorStr = event.error != null ? ' ERROR: ${event.error}' : '';
    final color = levelColors[event.level]!;
    final lines = event.stackTrace?.toString().trimRight().split('\n');

    return [
      color('$messageStr$errorStr'),
      if (lines != null)
        color(FlutterError.defaultStackFilter(lines).join('\n')),
    ];
  }

  String _stringifyMessage(dynamic message) {
    // ignore: avoid_dynamic_calls
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      const encoder = JsonEncoder.withIndent(null);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}

class ConsoleLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(log);
  }
}
