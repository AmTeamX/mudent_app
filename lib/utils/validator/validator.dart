import 'package:flutter/widgets.dart' show FormFieldValidator;

class Validators {
  static FormFieldValidator<String?> required(String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return errorMessage;
      }
      return null;
    };
  }

  static FormFieldValidator<String?> min(double min, String errorMessage) {
    return (value) {
      if (value == null || value.trim().isEmpty) {
        return null;
      }
      final dValue = _toDouble(value);
      return dValue < min ? errorMessage : null;
    };
  }

  static FormFieldValidator<String?> max(double max, String errorMessage) {
    return (value) {
      if (value == null || value.trim().isEmpty) {
        return null;
      }
      final dValue = _toDouble(value);
      return dValue > max ? errorMessage : null;
    };
  }

  static FormFieldValidator<String?> email(String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return null;
      }
      final emailRegex = RegExp(
          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'); // Improved regex
      return emailRegex.hasMatch(value) ? null : errorMessage;
    };
  }

  static FormFieldValidator<String?> minLength(
      int minLength, String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return null;
      }
      return value.length < minLength ? errorMessage : null;
    };
  }

  static FormFieldValidator<String?> maxLength(
      int maxLength, String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return null;
      }
      return value.length > maxLength ? errorMessage : null;
    };
  }

  static FormFieldValidator<String?> patternString(
      String pattern, String errorMessage) {
    return patternRegExp(RegExp(pattern), errorMessage);
  }

  static FormFieldValidator<String?> patternRegExp(
      RegExp pattern, String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return null;
      }
      return pattern.hasMatch(value) ? null : errorMessage;
    };
  }

  static FormFieldValidator<String?> compose(
      List<FormFieldValidator<String?>> validators) {
    return (value) {
      for (final validator in validators) {
        final result = validator(value);
        if (result != null) return result;
      }
      return null;
    };
  }

  // -------------------- private functions ---------------------- //

  static double _toDouble(String value) {
    value = value.replaceAll(' ', '').replaceAll(',', '');
    return double.parse(value);
  }
}
