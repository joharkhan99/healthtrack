import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:healthtrack/src/models/bar_chart_data.dart';

List<charts.Series<BarChartData, String>> _createSeries(List<BarChartData> data) {
  const int greyThreshold = 6000;

  return [
    charts.Series<BarChartData, String>(
      id: 'Kcal',
      data: data,
      domainFn: (BarChartData datum, _) => datum.label,
      measureFn: (BarChartData datum, _) => datum.value,
      labelAccessorFn: (BarChartData datum, _) => '${datum.value}',
      fillColorFn: (BarChartData datum, _) {
        return datum.value < greyThreshold ? charts.ColorUtil.fromDartColor(Colors.green.shade100) : charts.ColorUtil.fromDartColor(Colors.green);
      },
      insideLabelStyleAccessorFn: (datum, index) {
        return charts.TextStyleSpec(
          color: datum.value < greyThreshold ? charts.ColorUtil.fromDartColor(Colors.green.shade800) : charts.ColorUtil.fromDartColor(Colors.white),
          fontSize: 10,
        );
      },
    )
  ];
}

class PedometerBarChart extends StatelessWidget {
  final List<BarChartData> data;
  String label;
  String emoji;
  PedometerBarChart(this.data, this.label, this.emoji, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          // child: PedometerBarChart(chartData),
          child: charts.BarChart(
            _createSeries(data),
            vertical: true,
            barRendererDecorator: charts.BarLabelDecorator<String>(),
            primaryMeasureAxis: const charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
            domainAxis: charts.OrdinalAxisSpec(
              renderSpec: charts.SmallTickRendererSpec(
                labelStyle: charts.TextStyleSpec(
                  fontSize: 14,
                  fontWeight: FontWeight.w700.toString(),
                  color: charts.ColorUtil.fromDartColor(Colors.grey.shade400), // Set label color to green
                ),
              ),
            ),
            defaultRenderer: charts.BarRendererConfig(
              barRendererDecorator: charts.BarLabelDecorator<String>(),
              cornerStrategy: const charts.ConstCornerStrategy(3), // Remove bar corner radius
            ),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
