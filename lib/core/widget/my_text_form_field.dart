import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/shadow.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      required this.label,
      this.keyboardType,
      this.controller,
      this.onTap,
      this.readOnly});
  final String label;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [AppShadow.textFieldShadow],
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      child: TextFormField(
        readOnly: readOnly ?? false,
        onTap: onTap,
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(color: AppColor.indigo900),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.indigo.shade100,
          label:
              AppTextTheme.small(label, fontWeight: FontWeight.w500, context),
          labelStyle: TextStyle(color: AppColor.indigo900, fontSize: 15),
        ),
      ),
    );
  }
}
