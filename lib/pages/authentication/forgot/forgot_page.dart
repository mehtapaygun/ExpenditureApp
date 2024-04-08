import 'package:expenditure_app/constants/pages/auth_text.dart';
import 'package:expenditure_app/core/buttons/auth_button.dart';
import 'package:expenditure_app/core/buttons/back_button.dart';
import 'package:expenditure_app/core/widget/global_scaffold.dart';
import 'package:expenditure_app/core/widget/my_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MyBackButton(),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyTextFormField(label: authEmail),
              AuthButton(onTap: () {}, text: forgotButton),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
