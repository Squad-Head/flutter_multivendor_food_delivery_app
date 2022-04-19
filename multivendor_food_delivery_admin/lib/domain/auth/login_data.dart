import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginData extends Equatable {
  final String email;
  final String password;
  const LoginData({
    required this.email,
    required this.password,
  });

  LoginData copyWith({
    String? email,
    String? password,
  }) {
    return LoginData(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory LoginData.fromMap(Map<String, dynamic> map) {
    return LoginData(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginData.fromJson(String source) =>
      LoginData.fromMap(json.decode(source));

  @override
  String toString() => 'LoginData(email: $email, password: $password)';

  @override
  List<Object> get props => [email, password];
}
