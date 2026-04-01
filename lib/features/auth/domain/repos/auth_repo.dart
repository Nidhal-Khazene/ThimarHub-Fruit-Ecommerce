import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String emailAddress,
    String password,
    String name,
    bool isActive,
  );

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  );
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
  Future<void> signOut();
  Future<void> addUserData({required UserEntity user});
  Future<void> saveUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uId});
}
