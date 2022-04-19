// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String id;
  final String name;
  final String email;
  final String role;
  const UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
  });

  UserData copyWith({
    String? id,
    String? name,
    String? email,
    String? role,
  }) {
    return UserData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
    );
  }

  factory UserData.none() =>
      const UserData(id: '', name: '', email: '', role: '');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'role': role,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, email, role];
}
