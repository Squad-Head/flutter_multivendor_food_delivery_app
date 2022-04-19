import 'dart:convert';

import 'package:equatable/equatable.dart';

class RegistrationData extends Equatable {
  final String name;
  final String role;
  final String email;
  final String password;
  const RegistrationData({
    required this.name,
    required this.role,
    required this.email,
    required this.password,
  });

  RegistrationData copyWith({
    String? name,
    String? role,
    String? email,
    String? password,
  }) {
    return RegistrationData(
      name: name ?? this.name,
      role: role ?? this.role,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'role': role,
      'email': email,
      'password': password,
    };
  }

  factory RegistrationData.fromMap(Map<String, dynamic> map) {
    return RegistrationData(
      name: map['name'] ?? '',
      role: map['role'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationData.fromJson(String source) =>
      RegistrationData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegistrationData(name: $name, role: $role, email: $email, password: $password)';
  }

  @override
  List<Object> get props => [name, role, email, password];
}
