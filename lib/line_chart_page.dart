import 'package:flutter/material.dart';

import 'line_chart_widget.dart';

class LineChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 100),
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff020227),
        child: LineChartWidget(),
      );
}
