import 'package:fpdart/fpdart.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/login_data.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/registration_data.dart';
import 'package:multivendor_food_delivery_admin/domain/core/failure.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';

abstract class IAuthRepo {
  TaskEither<Failure, UserData> login(LoginData data);
  TaskEither<Failure, UserData> registration(RegistrationData data);
  Future<Option<UserData>> checkAuth();
}
