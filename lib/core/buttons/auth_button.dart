import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/shadow.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.onTap, required this.text});
  final Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            boxShadow: [AppShadow.shadow],
            borderRadius: BorderRadius.circular(50),
            color: AppColor.grey200),
        child: AppTextTheme.small(text, context),
      ),
    );
  }
}
