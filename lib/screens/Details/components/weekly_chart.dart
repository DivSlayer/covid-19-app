import 'package:covid_19/constants.dart';
import 'package:covid_19/utils/dimension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (index, meta) => Padding(
                  padding: EdgeInsets.only(top: dimmension(10, context)),
                  child: Text(
                    getDayName(index),
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: const Color(0xff7589a2),
                      fontSize: dimmension(12, context),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ),
          barGroups: getBarGroups(context),
        ),
      ),
    );
  }

  List<BarChartGroupData> getBarGroups(context) {
    List<double> barChartData = [6, 10, 8, 7, 10, 15, 9];
    List<BarChartGroupData> barChartGroups = [];
    barChartData.asMap().forEach(
          (i, value) => barChartGroups.add(
            BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(
                  toY: value,
                  color: i == 4 ? kPrimaryColor : kInactiveChartColor,
                  width: dimmension(16, context),
                ),
              ],
            ),
          ),
        );
    return barChartGroups;
  }

  String getDayName(double value) {
    switch (value.toInt()) {
      case 0:
        return "شنبه";
      case 1:
        return "1 شنبه";
      case 2:
        return "2 شنبه";
      case 3:
        return "3 شنبه";
      case 4:
        return "4 شنبه";
      case 5:
        return "5 شنبه";
      case 6:
        return "جمعه";
      default:
        return "";
    }
  }
}
