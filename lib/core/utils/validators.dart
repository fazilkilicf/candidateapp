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
}
