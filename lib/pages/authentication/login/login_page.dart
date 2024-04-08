import 'package:expenditure_app/constants/pages/auth_text.dart';
import 'package:expenditure_app/constants/route_names.dart';
import 'package:expenditure_app/core/buttons/auth_button.dart';
import 'package:expenditure_app/core/buttons/text_button.dart';
import 'package:expenditure_app/core/widget/global_scaffold.dart';
import 'package:expenditure_app/core/widget/logo.dart';
import 'package:expenditure_app/core/widget/my_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              const MyTextFormField(label: authEmail),
              const MyTextFormField(label: authPassword),
              MyTextButton(
                text: loginForgotButton,
                onPressed: () => Navigator.pushNamed(context, Routes.forgot),
              ),
              AuthButton(
                onTap: () => Navigator.pushNamed(context, Routes.bottomBar),
                text: loginButton,
              ),
            ],
          ),
          const Spacer(),
          MyTextButton(
              alignment: Alignment.center,
              onPressed: () => Navigator.pushNamed(context, Routes.register),
              text: authRegisterButton)
        ],
      ),
    );
  }
}
