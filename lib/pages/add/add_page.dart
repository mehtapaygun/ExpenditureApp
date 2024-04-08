import 'package:expenditure_app/constants/pages/add_text.dart';
import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/pages/add/expense/expense_page.dart';
import 'package:expenditure_app/pages/add/income/income_page.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
              indicatorColor: AppColor.indigo200,
              indicatorWeight: 8,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: AppTextTheme.small(income, context),
                ),
                Tab(
                  child: AppTextTheme.small(expense, context),
                )
              ]),
          const Expanded(
            child: TabBarView(children: [
              IncomePage(),
              ExpensePage(),
            ]),
          )
        ],
      ),
    );
  }
}
