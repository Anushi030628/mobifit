import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Reports",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
              color: Colors.black,
              fontFamily: 'Lato'),
        ),
      ),
    );
  }
}
