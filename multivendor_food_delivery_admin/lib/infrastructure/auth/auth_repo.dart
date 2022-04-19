import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/i_auth_repo.dart';
import 'package:multivendor_food_delivery_admin/domain/core/failure.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/registration_data.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/login_data.dart';

class AuthRepo extends IAuthRepo {
  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  @override
  Future<Option<UserData>> checkAuth() async {
    final user = await getCurrentUser();

    if (user != null) {
      final data = await _db
          .collection('Users')
          .doc(user.uid)
          .get()
          .then((value) => value.data());
      if (data != null) {
        final UserData user = UserData.fromMap(data);
        return some(user);
      } else {
        return none();
      }
    } else {
      return none();
    }
  }

  Future<User?> getCurrentUser() async {
    if (_auth.currentUser != null) {
      return _auth.currentUser;
    } else {
      await Future.delayed(const Duration(milliseconds: 500));
      if (_auth.currentUser != null) {
        return _auth.currentUser;
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        if (_auth.currentUser != null) {
          return _auth.currentUser;
        } else {
          await Future.delayed(const Duration(milliseconds: 500));
          if (_auth.currentUser != null) {
            return _auth.currentUser;
          } else {
            await Future.delayed(const Duration(milliseconds: 500));
            if (_auth.currentUser != null) {
              return _auth.currentUser;
            } else {
              await Future.delayed(const Duration(milliseconds: 500));
              return _auth.currentUser;
            }
          }
        }
      }
    }
  }

  @override
  TaskEither<Failure, UserData> login(LoginData data) =>
      TaskEither.tryCatch(() async {
        final loginResp = await _auth.signInWithEmailAndPassword(
            email: data.email, password: data.password);

        if (loginResp.user != null) {
          final data = await _db
              .collection('Users')
              .doc(loginResp.user!.uid)
              .get()
              .then((value) => value.data());
          if (data != null) {
            final UserData user = UserData.fromMap(data);
            return user;
          } else {
            throw "User data does not exist in firestore";
          }
        } else {
          throw "Login was unsuccessfull";
        }
      }, (error, _) => Failure(type: 'Login', error: error.toString()));

  @override
  TaskEither<Failure, UserData> registration(RegistrationData data) =>
      TaskEither.tryCatch(() async {
        final signupResp = await _auth.createUserWithEmailAndPassword(
            email: data.email, password: data.password);

        if (signupResp.user != null) {
          final UserData userData = UserData(
              id: signupResp.user!.uid,
              name: data.name,
              email: data.email,
              role: data.role);
          await _db
              .collection('Users')
              .doc(signupResp.user!.uid)
              .set(userData.toMap());
          return userData;
        } else {
          throw "Registration was unsuccessfull";
        }
      }, (error, _) => Failure(type: 'Registration', error: error.toString()));
}
