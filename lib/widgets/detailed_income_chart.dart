import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 0 ? 1.7 : null,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeIndex == 0 ? null : Colors.white,
              ),
              radius: activeIndex == 0 ? 40 : 30,
              value: 40,
              title: activeIndex == 0 ? 'Design Service' : "40%",
              color: const Color(0xFF208CC8)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 1 ? 2.7 : null,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeIndex == 1 ? null : Colors.white,
              ),
              radius: activeIndex == 1 ? 40 : 30,
              title: activeIndex == 1 ? 'Design product' : "25%",
              value: 25,
              color: const Color(0xFF4EB7F2)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 2 ? 1.7 : null,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeIndex == 2 ? null : Colors.white,
              ),
              radius: activeIndex == 2 ? 40 : 30,
              title: activeIndex == 2 ? 'Product royalti' : "20%",
              value: 20,
              color: const Color(0xFF064061)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 3 ? 1.7 : null,
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeIndex == 3 ? null : Colors.white,
              ),
              radius: activeIndex == 3 ? 40 : 30,
              title: activeIndex == 3 ? 'others' : '22%',
              value: 22,
              color: const Color(0xFFE2DECD)),
        ]);
  }
}
