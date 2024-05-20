class Validator {
  Validator._();

  static bool validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return false;
    }
    if (password.length < 6) {
      return false;
    }
    return true;
  }

  static bool validateIsNotEmpty({required String? input, int? minLength}) {
    if (input == null || input.isEmpty) {
      return false;
    }
    if (minLength != null) {
      if (input.length < minLength) {
        return false;
      }
    }
    return true;
  }
}
