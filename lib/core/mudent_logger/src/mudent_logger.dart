import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../utils/utils.dart';

class MudentLogger {
  MudentLogger._();

  // NOTE: for debugging purpose. Don't forget to turn it to be `false` after finishing debugging
  static const _isDebugLogEnabled = true;

  static void info({required String location, required String message}) {
    _log(
        level: _LogLevel.info,
        emoji: 'ℹ️',
        location: location,
        message: message);
  }

  static void error({
    required String location,
    required String message,
    SeverityLevel? severityLevel,
    Object? errorObject,
    StackTrace? stackTrace,
  }) {
    _log(
      level: _LogLevel.error,
      emoji: '🔴',
      location: location,
      message: message,
      severityLevel: severityLevel,
      errorObject: errorObject,
      stackTrace: stackTrace,
    );
  }

  static void debug({required String location, required String message}) {
    if (_isDebugLogEnabled) {
      _log(
          level: _LogLevel.debug,
          emoji: '👁️',
          location: location,
          message: message,
          useLog: false);
    }
  }

  static void _log({
    required _LogLevel level,
    required String emoji,
    required String location,
    required String message,
    SeverityLevel? severityLevel,
    Object? errorObject,
    StackTrace? stackTrace,
    bool useLog = true,
  }) {
    String timestamp = DateTime.now().toIso8601String();
    String logMessage = '[$level $emoji][$timestamp][$location]: $message';

    if (level == _LogLevel.error && errorObject != null) {
      logMessage += '\nError: $errorObject';
      if (stackTrace != null) logMessage += '\nStackTrace: $stackTrace';
    }

    if (useLog) {
      log(logMessage, level: severityLevel?.value ?? 0);
      return;
    }
    debugPrint(logMessage);
  }
}

enum _LogLevel {
  info(label: 'INFO'),
  error(label: 'ERROR'),
  debug(label: 'DEBUG');

  const _LogLevel({required this.label});

  final String label;
}
