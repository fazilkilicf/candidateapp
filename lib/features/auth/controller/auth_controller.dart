import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../../features.dart';

class AuthController extends ChangeNotifier {
  bool isLoading = true;
  bool hasAuth = false;
  bool hasError = false;

  AuthController() {
    checkAuth();
  }

  void checkAuth() async {
    isLoading = true;
    notifyListeners();

    final uid = _getTheUserId();
    if (uid == null) {
      hasError = true;
      isLoading = false;
      hasAuth = false;
      notifyListeners();
    } else {
      hasError = false;
      isLoading = false;
      hasAuth = true;
      notifyListeners();
    }
  }

  String? _getTheUserId({String? storageKey}) {
    final userId =
        SharedPrefs.instance.getString(storageKey ?? KeyConstants.authUserId);
    notifyListeners();
    return userId;
  }

  Future<bool> storeTheUserId(
      {String? storageKey, required String userIdValue}) async {
    final status = await SharedPrefs.instance
        .setString(storageKey ?? KeyConstants.authUserId, userIdValue);

    if (status) {
      hasAuth = true;
      isLoading = false;
      notifyListeners();
    } else {
      hasAuth = false;
      isLoading = false;
      notifyListeners();
    }
    return status;
  }

  Future<Either<Failure, UserModel>> login(
      {required String username, required String password}) async {
    isLoading = true;
    final result =
        await AuthService().login(username: username, password: password);
    isLoading = false;
    notifyListeners();

    result.fold((l) {
      hasError = true;
      hasAuth = false;
      notifyListeners();
    }, (r) {
      hasError = false;
      hasAuth = true;
      notifyListeners();
    });
    return result;
  }

  Future<bool> logOut() async {
    final status = await SharedPrefs.instance.clear();

    if (status) {
      hasAuth = false;
      isLoading = false;
      notifyListeners();
    }
    return status;
  }
}
