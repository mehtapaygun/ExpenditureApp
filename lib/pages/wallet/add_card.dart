import 'package:expenditure_app/constants/pages/wallet_text.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/core/widget/my_text_form_field.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey.shade300),
          color: Colors.white24,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.red)),
              AppTextTheme.small(addCard, context)
            ],
          ),
          const MyTextFormField(label: cardNumber),
          const MyTextFormField(label: shelfLife),
          const MyTextFormField(label: nameSurname),
        ],
      ),
    );
  }
}
