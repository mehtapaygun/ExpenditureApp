import 'package:expenditure_app/constants/pages/wallet_text.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/pages/wallet/add_card.dart';
import 'package:expenditure_app/pages/wallet/credit_card.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextTheme.kanit("Kredi Kartlarım", context),
        const Expanded(flex: 5, child: CreditCard()),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextTheme.kanit(
                    "₺30,453.02",
                    fontWeight: FontWeight.w900,
                    size: 20,
                    context),
                AppTextTheme.small(availableBalance, context),
              ],
            )),
        const Expanded(flex: 6, child: AddCard()),
        const Spacer(
          flex: 3,
        )
      ],
    );
  }
}
