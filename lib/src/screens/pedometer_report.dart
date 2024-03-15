import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChartData {
  final String label;
  final int value;

  BarChartData(this.label, this.value);
}

List<charts.Series<BarChartData, String>> _createSeries(List<BarChartData> data) {
  return [
    charts.Series<BarChartData, String>(
      id: 'Data',
      data: data,
      domainFn: (BarChartData datum, _) => datum.label,
      measureFn: (BarChartData datum, _) => datum.value,
      labelAccessorFn: (BarChartData datum, _) => '${datum.value}',
      fillColorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.green).lighter,
      // labelAccessorFn: (BarChartData datum, _) => '\$${datum.toString()}'
      insideLabelStyleAccessorFn: (datum, index) => charts.TextStyleSpec(
        color: charts.MaterialPalette.white,
        fontSize: 12,
      ),
    )
  ];
}

class VerticalBarChart extends StatelessWidget {
  final List<BarChartData> data;

  const VerticalBarChart(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: charts.BarChart(
        _createSeries(data),
        vertical: true,
        // primaryMeasureAxis: null,
        barRendererDecorator: charts.BarLabelDecorator<String>(),
        defaultRenderer: charts.BarRendererConfig(
          // cornerStrategy: const charts.ConstCornerStrategy(5),
          groupingType: charts.BarGroupingType.grouped,
          barGroupInnerPaddingPx: 0,
          strokeWidthPx: 0,
        ),
        barGroupingType: charts.BarGroupingType.grouped,
        primaryMeasureAxis: new charts.NumericAxisSpec(renderSpec: new charts.NoneRenderSpec()),
      ),
    );
  }
}

class PedometerReport extends StatelessWidget {
  const PedometerReport({super.key});

  @override
  Widget build(BuildContext context) {
    List<BarChartData> chartData = [
      BarChartData('S1', 6000),
      BarChartData('M', 4000),
      BarChartData('T1', 10408),
      BarChartData('W', 2000),
      BarChartData('T', 5366),
      BarChartData('F', 9864),
      BarChartData('S', 8524),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Pedometer Report'),
      ),
      body: Center(
        child: Container(
          height: 300,
          padding: EdgeInsets.all(0),
          child: VerticalBarChart(chartData),
        ),
      ),
    );
  }
}
