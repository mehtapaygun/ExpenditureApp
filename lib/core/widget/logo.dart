import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Lottie.asset("assets/animation/logo1.json", height: 120),
        Lottie.asset("assets/animation/logo2.json", height: 180),
      ],
    );
  }
}
