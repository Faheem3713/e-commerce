import 'package:ecommerce/domain/auth/email_address.dart';
import 'package:ecommerce/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/auth/i_auth_facade.dart';
import 'package:ecommerce/domain/auth/password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  AuthRepository(this._auth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final email = emailAddress.getOrCrash();
    final passWord = password.getOrCrash();
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: passWord);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleSignIn = await _googleSignIn.signIn();
      if (googleSignIn == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final authentication = await googleSignIn.authentication;
      final authCredential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken);
      return _auth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final email = emailAddress.getOrCrash();
    final passWord = password.getOrCrash();
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: passWord);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverFailure());
      }
    }
  }
}
