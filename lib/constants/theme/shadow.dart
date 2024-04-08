import 'package:expenditure_app/constants/theme/color.dart';
import 'package:flutter/material.dart';

final class AppShadow {
  static BoxShadow shadow = BoxShadow(
      color: AppColor.grey, blurRadius: 20, offset: const Offset(8, 8));
  static BoxShadow textFieldShadow = BoxShadow(
      color: AppColor.grey400, blurRadius: 15, offset: const Offset(4, 4));
  static BoxShadow imageShadow = BoxShadow(
      color: Colors.grey.shade800, blurRadius: 2, offset: const Offset(1, 1));
  static Shadow textShadow = Shadow(
      color: Colors.grey.shade900, blurRadius: 5, offset: const Offset(1, 1));
}
