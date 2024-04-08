import 'package:expenditure_app/constants/theme/color.dart';
import 'package:flutter/material.dart';

class GlobalBackground extends StatelessWidget {
  const GlobalBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [AppColor.indigo200, AppColor.white],
              radius: 2,
              center: Alignment.bottomRight)),
      child: child,
    );
  }
}
