/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PedometerPointChart extends StatelessWidget {
  final List<LinearSales> seriesList;

  const PedometerPointChart(this.seriesList, {super.key});

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      _createSampleData(seriesList),
      animate: true,
      defaultRenderer: charts.LineRendererConfig(includePoints: true),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData(List<LinearSales> data) {
    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
