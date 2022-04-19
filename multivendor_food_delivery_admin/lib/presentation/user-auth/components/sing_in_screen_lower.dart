import 'package:flutter/material.dart';

class SignInScreenLower extends StatelessWidget {
  const SignInScreenLower({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.grey[400]),
        ),
        GestureDetector(
          onTap: onPressed,
          child: const Text(
            " Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
