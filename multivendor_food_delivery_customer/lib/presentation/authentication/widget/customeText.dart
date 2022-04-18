import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.fontWeight,
    required this.size,
    required this.color,
  }) : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: Colors.grey,
      ),
    );
  }
}
