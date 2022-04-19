import 'package:equatable/equatable.dart';

import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';
import 'package:multivendor_food_delivery_admin/domain/core/failure.dart';

class AuthState extends Equatable {
  final UserData user;
  final bool loading;
  final Failure failure;
  const AuthState({
    required this.user,
    required this.loading,
    required this.failure,
  });

  AuthState copyWith({
    UserData? user,
    bool? loading,
    Failure? failure,
  }) {
    return AuthState(
      user: user ?? this.user,
      loading: loading ?? this.loading,
      failure: failure ?? this.failure,
    );
  }

  factory AuthState.init() =>
      AuthState(user: UserData.none(), loading: false, failure: Failure.none());

  @override
  String toString() =>
      'AuthState(user: $user, loading: $loading, failure: $failure)';

  @override
  List<Object> get props => [user, loading, failure];
}
