import 'package:flutter/material.dart';

class SectionTitleText extends StatelessWidget {
  const SectionTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.headline5),
      ],
    );
  }
}
