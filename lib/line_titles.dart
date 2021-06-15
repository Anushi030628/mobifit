import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'Lato',
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 4:
                return '26-Mar';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: 'Lato',
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '9.0';
              case 3:
                return '10.0';
              case 5:
                return '11.0';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}
