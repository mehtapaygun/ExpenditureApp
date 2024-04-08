import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton(
      {super.key, required this.onPressed, required this.text, this.alignment});
  final Function() onPressed;
  final String text;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment ?? Alignment.centerRight,
        child: TextButton(
          onPressed: onPressed,
          child:
              AppTextTheme.small(text, fontWeight: FontWeight.normal, context),
        ));
  }
}
