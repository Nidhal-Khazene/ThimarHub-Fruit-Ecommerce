import 'dart:developer';

import 'package:ecommerce_app/core/errors/custom_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<User?> createUserWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception: Firebase.createUserWithEmailAndPassword ${e.toString()} with code: ${e.code}.",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: ".كلمة المرور صعيفة جدا");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هناك حساب يستخدم نفس الإيميل.");
      } else if (e.code == "network-request-failed") {
        throw CustomException(message: "تأكد من إتصالك بالأنترنت.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
      }
    } catch (e) {
      log(
        "Exception: Firebase.createUserWithEmailAndPassword ${e.toString()}.",
      );
      throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
    }
  }

  Future<UserCredential> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception: Firebase.signInWithEmailAndPassword ${e.toString()} with code: ${e.code}.",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: ".كلمة المرور صعيفة جدا");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هناك حساب يستخدم نفس الإيميل.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
      }
    } catch (e) {
      log("Exception: Firebase.signInWithEmailAndPassword ${e.toString()}.");
      throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
    }
  }

  // Social Media

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      final OAuthCredential credential = FacebookAuthProvider.credential(
        result.accessToken!.tokenString,
      );
      return (await FirebaseAuth.instance.signInWithCredential(credential));
    }
    return null;
  }

  static bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser == null) {
      return false;
    }
    return true;
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
