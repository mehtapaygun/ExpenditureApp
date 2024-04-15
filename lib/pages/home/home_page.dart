import 'package:expenditure_app/constants/pages/home_text.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/pages/home/percent.dart';
import 'package:expenditure_app/pages/home/transactions_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppTextTheme.kanit(
                  "₺30,453.02", size: 25, fontWeight: FontWeight.w700, context),
              const Percent()
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal:
                      BorderSide(width: 3, color: Colors.indigo.shade300)),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.elliptical(200, 70)),
              color: Colors.indigo.shade100,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: AppTextTheme.kanit(
                        transactions,
                        size: 19,
                        fontWeight: FontWeight.w700,
                        context),
                  ),
                ),
                const Expanded(flex: 11, child: TransactionsCard()),
              ],
            ),
          ),
        )
      ],
    );
  }
}
