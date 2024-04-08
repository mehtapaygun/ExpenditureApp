import 'package:expenditure_app/core/widget/global_background.dart';
import 'package:flutter/material.dart';

class GlobalScaffold extends StatelessWidget {
  const GlobalScaffold({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GlobalBackground(
      child: Scaffold(backgroundColor: Colors.transparent, body: child),
    );
  }
}
