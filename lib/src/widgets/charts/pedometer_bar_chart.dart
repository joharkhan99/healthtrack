import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:healthtrack/src/models/bar_chart_data.dart';

List<charts.Series<BarChartData, String>> _createSeries(List<BarChartData> data) {
  return [
    charts.Series<BarChartData, String>(
      id: 'Data',
      data: data,
      domainFn: (BarChartData datum, _) => datum.label,
      measureFn: (BarChartData datum, _) => datum.value,
      labelAccessorFn: (BarChartData datum, _) => '${datum.value}',
      fillColorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.green).lighter,
      insideLabelStyleAccessorFn: (datum, index) => const charts.TextStyleSpec(
        color: charts.MaterialPalette.white,
        fontSize: 10,
      ),
    )
  ];
}

class PedometerBarChart extends StatelessWidget {
  final List<BarChartData> data;
  const PedometerBarChart(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
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
    );
  }
}
