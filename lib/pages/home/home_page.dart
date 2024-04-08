import 'package:expenditure_app/constants/pages/home_text.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/pages/home/percent.dart';
import 'package:expenditure_app/pages/home/transactions_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            AppTextTheme.kanit(
                "₺1,250,453.02",
                size: 25,
                fontWeight: FontWeight.w700,
                context),
            const SizedBox(height: 110),
            const Percent()
          ],
        ),
        Positioned.fill(
          top: 320,
          child: ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              padding: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: AppTextTheme.kanit(
                        transactions,
                        size: 19,
                        fontWeight: FontWeight.w700,
                        context),
                  ),
                  const Expanded(flex: 12, child: TransactionsCard()),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    double y = 55;
    double x = (size.width - 6 * y) / 4;

    final path = Path();
    path.moveTo(0, h);
    path.lineTo(0, 0);
    path.lineTo(x, 0);

    path.quadraticBezierTo(x + y, 70, x + 2 * y, 0);
    path.lineTo(2 * x + 2 * y, 0);

    path.quadraticBezierTo(2 * x + 3 * y, 70, 2 * x + 4 * y, 0);
    path.lineTo(3 * x + 4 * y, 0);

    path.quadraticBezierTo(3 * x + 5 * y, 70, 3 * x + 6 * y, 0);
    path.lineTo(w, 0);
    path.lineTo(w, h);

    //path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
