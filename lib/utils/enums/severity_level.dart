enum SeverityLevel {
  /// Use this level for minor issues that do not significantly impact the user experience or the application's functionality.
  /// Examples -  non-critical UI inconsistencies or minor performance issues.
  low(1),

  /// Use this level for issues that affect the user experience or application functionality but do not
  /// completely prevent the user from using the application.
  /// Examples - intermittent connectivity issues, recoverable errors, or temporary loss of non-critical functionalities.
  moderate(2),

  /// Use this level for critical issues that significantly impact the user experience or the core functionality of
  /// the application.
  /// Examples - crashes, loss of data, security vulnerabilities, or anything that renders the application
  /// unusable or severely compromised.
  high(3);

  const SeverityLevel(this.value);

  final int value;
}
