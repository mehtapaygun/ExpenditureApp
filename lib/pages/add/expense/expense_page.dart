import 'package:expenditure_app/constants/pages/add_text.dart';
import 'package:expenditure_app/constants/theme/assets.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/core/widget/my_dropdown_form_field.dart';
import 'package:expenditure_app/core/widget/my_text_form_field.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatelessWidget {
  const ExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Spacer(),
          const MyTextFormField(label: expenseTime),
          MyDropDownFormField(
            label: expenseCategory,
            items: [
              dropDownItem(context, title: "Giyim", category: "clothing"),
              dropDownItem(context, title: "Okul", category: "school"),
              dropDownItem(context, title: "Sağlık", category: "health"),
              dropDownItem(context, title: "Akaryakıt", category: "fuel"),
              dropDownItem(context, title: "Kozmetik", category: "cosmetics"),
              dropDownItem(context, title: "Seyahat", category: "travel"),
              dropDownItem(context, title: "Hayvan", category: "pet"),
              dropDownItem(context, title: "Market", category: "market"),
              dropDownItem(context, title: "Sinema", category: "cinema"),
              dropDownItem(context, title: "Kuaför", category: "hairdressers"),
              dropDownItem(context, title: "Araba", category: "car")
            ],
            onChanged: (value) {},
          ),
          const MyTextFormField(label: expenseMoney),
          MyDropDownFormField(
            label: expenseCurrency,
            items: [
              dropDownItem(context, title: "TRY", currency: "lira"),
              dropDownItem(context, title: "USD", currency: "dollar"),
              dropDownItem(context, title: "EUR", currency: "euro"),
              dropDownItem(context, title: "JPY", currency: "yen"),
              dropDownItem(context, title: "GBP", currency: "sterling"),
              dropDownItem(context, title: "CNY", currency: "yen"),
              dropDownItem(context, title: "AUD", currency: "dollar"),
            ],
            onChanged: (value) {},
          ),
          const MyTextFormField(label: expenseDescription),
          const Spacer(flex: 2)
        ],
      ),
    );
  }

  DropdownMenuItem<String> dropDownItem(BuildContext context,
      {required String title, String? category, String? currency}) {
    return DropdownMenuItem(
        value: title,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            if (category != null) Images.category(image: category, height: 30),
            if (currency != null) Images.currency(image: currency, height: 30),
            const SizedBox(
              width: 20,
            ),
            AppTextTheme.small(title, fontWeight: FontWeight.w500, context),
          ],
        ));
  }
}
