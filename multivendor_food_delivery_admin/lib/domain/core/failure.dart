import 'dart:convert';

import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String type;
  final String error;
  const Failure({
    required this.type,
    required this.error,
  });

  Failure copyWith({
    String? type,
    String? error,
  }) {
    return Failure(
      type: type ?? this.type,
      error: error ?? this.error,
    );
  }

  factory Failure.none() => const Failure(type: '', error: '');
  @override
  List<Object> get props => [type, error];
}
