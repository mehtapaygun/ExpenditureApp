import 'package:expenditure_app/constants/pages/add_text.dart';
import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:expenditure_app/pages/analysis/line_chart_widget.dart';
import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppTextTheme.kanit("Analiz", context),
      const SizedBox(height: 100),
      AppTextTheme.small("Harcanan Tutar", context),
      AppTextTheme.kanit("₺18.000", size: 20, context),
      const SizedBox(height: 100),
      SizedBox(
        height: 300,
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                  indicatorColor: AppColor.indigo200,
                  indicatorWeight: 4,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: AppTextTheme.xSmall(income, context),
                    ),
                    Tab(
                      child: AppTextTheme.xSmall(expense, context),
                    )
                  ]),
              const Expanded(
                child: TabBarView(children: [
                  LineChartWidget(),
                  LineChartWidget(),
                ]),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
