import 'package:expenditure_app/constants/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 80000,
            titlesData: LineTitles.getTitleData(),
            gridData: const FlGridData(
              show: false,
            ),
            borderData: FlBorderData(show: false),
            lineBarsData: [
              LineChartBarData(
                  spots: [
                    const FlSpot(0, 30000),
                    const FlSpot(2.6, 20000),
                    const FlSpot(4.9, 55840),
                    const FlSpot(6.8, 25000),
                    const FlSpot(8, 40000),
                    const FlSpot(9.5, 30000),
                    const FlSpot(11, 40000)
                  ],
                  isCurved: true,
                  color: AppColor.indigo200,
                  barWidth: 2,
                  dotData: const FlDotData(show: false),
                  belowBarData: BarAreaData(
                    gradient: LinearGradient(colors: [
                      Colors.indigo.shade400,
                      Colors.indigo.shade100
                    ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
                    show: true,
                  ))
            ]),
      );
}

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(drawBelowEverything: false),
        topTitles: const AxisTitles(drawBelowEverything: false),

        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 1:
                  return const Text(
                    'Şubat',
                    style: TextStyle(fontSize: 10),
                  );
                case 4:
                  return const Text(
                    'Mayıs',
                    style: TextStyle(fontSize: 10),
                  );
                case 7:
                  return const Text(
                    'Ağustos',
                    style: TextStyle(fontSize: 10),
                  );
                case 10:
                  return const Text(
                    'Kasım',
                    style: TextStyle(fontSize: 10),
                  );
              }
              return const Text(' ');
            },
          ),
        ),
        leftTitles: const AxisTitles(drawBelowEverything: false),

        // AxisTitles(
        //   sideTitles: SideTitles(
        //     showTitles: true,
        //     getTitlesWidget: (value, meta) {
        //       switch (value.toInt()) {
        //         case 1:
        //           return const Text(
        //             '10k',
        //             style: TextStyle(fontSize: 10),
        //           );
        //         case 3:
        //           return const Text(
        //             '30k',
        //             style: TextStyle(fontSize: 10),
        //           );
        //         case 5:
        //           return const Text(
        //             '50k',
        //             style: TextStyle(fontSize: 10),
        //           );
        //         case 7:
        //           return const Text(
        //             '70k',
        //             style: TextStyle(fontSize: 10),
        //           );
        //       }
        //       return const Text(' ');
        //     },
        //   ),)
      );
}
