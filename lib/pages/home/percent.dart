import 'package:expenditure_app/constants/pages/home_text.dart';
import 'package:expenditure_app/core/widget/progress.dart';
import 'package:flutter/material.dart';

class Percent extends StatelessWidget {
  const Percent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProgressBarAnimation(
          title: creditCard,
          progress: 80,
          color: Colors.deepPurple,
        ),
        ProgressBarAnimation(
          title: general,
          progress: 46.5,
          color: Colors.indigo,
        ),
        ProgressBarAnimation(
          title: cash,
          progress: 62.2,
          color: Colors.blue,
        ),
      ],
    );
  }
}
