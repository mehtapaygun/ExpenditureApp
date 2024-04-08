import 'package:expenditure_app/constants/route_names.dart';
import 'package:expenditure_app/core/widget/bottom_tab_bar.dart';
import 'package:expenditure_app/pages/authentication/forgot/forgot_page.dart';
import 'package:expenditure_app/pages/authentication/login/login_page.dart';
import 'package:expenditure_app/pages/onboard/onboard_page.dart';
import 'package:expenditure_app/pages/authentication/register/register_page.dart';
import 'package:flutter/material.dart';

typedef AppRouteMapFunction = Widget Function(BuildContext context);

final class AppRoute {
  static const String onboard = Routes.onboard;
  static const String login = Routes.login;
  static const String forgot = Routes.forgot;
  static const String register = Routes.register;
  static const String bottomBar = Routes.bottomBar;

  static Map<String, AppRouteMapFunction> routes = {
    onboard: (context) => const OnboardPage(),
    login: (context) => const LoginPage(),
    forgot: (context) => const ForgotPage(),
    register: (context) => const RegisterPage(),
    bottomBar: (context) => const BottomTabBar(),
  };
}
