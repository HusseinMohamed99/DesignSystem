import 'package:design_system/core/helpers/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

class ValidationManager {
  static String? displayNameValidator(
    BuildContext context,
    String? displayName,
  ) {
    final localization = context.localization;
    if (_isNullOrEmpty(displayName)) {
      return localization.full_name_empty;
    }
    if (displayName!.length < 3) {
      return localization.full_name_minimum_length;
    }
    if (displayName.length > 20) {
      return localization.full_name_maximum_length;
    }
    return null;
  }

  static String? phoneValidator(BuildContext context, String? phone) {
    final localization = context.localization;
    if (_isNullOrEmpty(phone)) {
      return localization.phone_empty;
    }
    if (!_isValidPhone(phone!)) {
      return localization.phone_valid;
    }
    return null;
  }

  static String? emailValidator(BuildContext context, String? value) {
    final localization = context.localization;
    if (_isNullOrEmpty(value)) {
      return localization.email_empty;
    }
    if (!_isValidEmail(value!)) {
      return localization.email_valid;
    }
    return null;
  }

  static String? otpValidator(BuildContext context, String? value) {
    final localization = context.localization;
    if (_isNullOrEmpty(value)) {
      return localization.otp_empty;
    }
    if (!_isValidOtp(value!)) {
      return localization.otp_valid;
    }
    return null;
  }

  static String? passwordValidator(BuildContext context, String? value) {
    final localization = context.localization;
    if (_isNullOrEmpty(value)) {
      return localization.password_empty;
    }
    if (!hasMinLength(value!)) {
      return localization.password_length;
    }
    if (!hasLowerCase(value)) {
      return localization.password_missing_lowercase;
    }
    if (!hasUpperCase(value)) {
      return localization.password_missing_uppercase;
    }
    if (!hasNumber(value)) {
      return localization.password_missing_number;
    }
    if (!hasSpecialCharacter(value)) {
      return localization.password_missing_special;
    }
    return null;
  }

  static String? repeatPasswordValidator(
    BuildContext context, {
    String? value,
    String? password,
  }) {
    final localization = context.localization;
    if (value != password) {
      return localization.password_does_not_match;
    }
    return null;
  }

  static bool _isNullOrEmpty(String? value) =>
      value == null || value.trim().isEmpty;

  static bool _isValidPhone(String phone) {
    final regex = RegExp(r'^(010|011|012|015)[0-9]{8}$');
    return regex.hasMatch(phone);
  }

  static bool _isValidEmail(String email) {
    final regex = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
    return regex.hasMatch(email);
  }

  static bool _isValidOtp(String otp) {
    final regex = RegExp(r'^(?=.*?[0-9])');
    return regex.hasMatch(otp);
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return password.length >= 8;
  }
}
