import 'package:candidateapp/core/core.dart';
import 'package:candidateapp/features/auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../config/config.dart';

class FirestoreService {
  static late FirebaseFirestore _db;

  static FirebaseFirestore get db => _db;

  final NetworkInfo _networkInfo = NetworkInfoImpl(InternetConnectionChecker());

  Future<Either<Failure, UserModel>> getUser({required userId}) async {
    if (await _networkInfo.isConnected) {
      debugPrint("networkInfo.isConnected");
      final documentSnapshot = await _db
          .collection(KeyConstants.kUserCollectionKey)
          .doc(userId)
          .get();
      if (documentSnapshot.exists && documentSnapshot.data() != null) {
        return Right(UserModel.fromJson(documentSnapshot.data()!));
      } else {
        return Left(Failure(
            navigationKey.currentState!.context.l10n.something_went_wrong));
      }
    } else {
      return Left(Failure(navigationKey
          .currentState!.context.l10n.no_internet_connection_error));
    }
  }
}
