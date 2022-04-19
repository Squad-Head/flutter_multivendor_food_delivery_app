import 'package:flutter/material.dart';

class SignUpScreenLower extends StatelessWidget {
  const SignUpScreenLower({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(color: Colors.grey[400]),
        ),
        GestureDetector(
          onTap: onPressed,
          child: const Text(
            " Sign In",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
