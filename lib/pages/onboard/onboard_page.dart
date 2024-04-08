import 'package:expenditure_app/constants/route_names.dart';
import 'package:expenditure_app/core/widget/global_background.dart';
import 'package:expenditure_app/core/widget/logo.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalBackground(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Logo(),
        IconButton(
            icon: const Icon(Icons.navigate_next_rounded),
            onPressed: () => Navigator.pushNamed(context, Routes.login)),
      ]),
    );
  }
}
