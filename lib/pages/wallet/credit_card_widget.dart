import 'package:expenditure_app/constants/theme/assets.dart';
import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/shadow.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget(
      {super.key,
      required this.num,
      required this.time,
      required this.name,
      required this.color});
  final String num;
  final String time;
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [AppShadow.shadow]),
      padding: const EdgeInsets.all(15),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Images.card(image: "cip", height: 30),
                Images.card(
                    image: "contactless", height: 20, color: AppColor.white)
              ],
            ),
          ),
          const SizedBox(height: 7),
          AppTextTheme.medium(
              num,
              color: AppColor.white,
              fontWeight: FontWeight.normal,
              context),
          const SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: AppTextTheme.xSmall(
                          time, color: AppColor.white, context),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AppTextTheme.xSmall(
                          name, color: AppColor.white, context),
                    )
                  ],
                ),
              ),
              Images.card(image: 'master-card', height: 30)
            ],
          )
        ],
      ),
    );
  }
}
