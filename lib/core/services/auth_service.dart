import 'package:candidateapp/config/config.dart';
import 'package:candidateapp/core/core.dart';
import 'package:candidateapp/features/auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:dartz/dartz.dart';

class AuthService {
  final _db = FirebaseFirestore.instance;
  final NetworkInfo _networkInfo = NetworkInfoImpl(InternetConnectionChecker());

  Future<Either<Failure, UserModel>> login(
      {required String username, required String password}) async {
    if (await _networkInfo.isConnected) {
      debugPrint("networkInfo.isConnected");
      final querySnapshot = await _db
          .collection(KeyConstants.kUserCollectionKey)
          .where(KeyConstants.kUsernameFieldKey, isEqualTo: username)
          .where(KeyConstants.kPasswordFieldKey, isEqualTo: password)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        debugPrint("doc id: ${querySnapshot.docs.first.id.toString()}");
        return Right(UserModel.fromJson(querySnapshot.docs.first.data()));
      } else {
        return Left(Failure(navigationKey
            .currentState!.context.l10n.username_or_password_error));
      }
    } else {
      return Left(Failure(navigationKey
          .currentState!.context.l10n.no_internet_connection_error));
    }
  }
}
