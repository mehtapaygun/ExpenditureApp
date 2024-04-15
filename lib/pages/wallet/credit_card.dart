import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/pages/wallet/credit_card_widget.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CreditCardWidget(
            color: AppColor.indigo900,
            num: "1524 8576 8412 3594",
            time: "02/25",
            name: "Mehtap Aygün"),
        CreditCardWidget(
            color: AppColor.indigo200,
            num: "1524 8576 8412 3594",
            time: "02/25",
            name: "Mehtap Aygün"),
        CreditCardWidget(
            color: AppColor.grey200,
            num: "1524 8576 8412 3594",
            time: "02/25",
            name: "Mehtap Aygün"),
        CreditCardWidget(
            color: AppColor.black,
            num: "1524 8576 8412 3594",
            time: "02/25",
            name: "Mehtap Aygün"),
      ],
    );
  }
}
