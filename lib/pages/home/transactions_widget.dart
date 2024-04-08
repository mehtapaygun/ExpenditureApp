import 'package:expenditure_app/constants/theme/assets.dart';
import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.time,
      required this.money});

  final String image;
  final String text;
  final String time;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: AppColor.indigo200),
          color: Colors.indigo.shade100),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Images.category(image: image, height: 30),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextTheme.small(text, fontWeight: FontWeight.bold, context),
                AppTextTheme.xSmall(
                    time, fontWeight: FontWeight.normal, context)
              ],
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: AppColor.indigo200),
              ),
              child: AppTextTheme.xSmall(
                  "-₺$money",
                  color: AppColor.indigo900,
                  fontWeight: FontWeight.w600,
                  context),
            )
          ],
        ),
      ),
    );
  }
}
