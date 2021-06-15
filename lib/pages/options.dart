import 'package:flutter/material.dart';

class MoreOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "More Options",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 28,
            color: Colors.black,
            fontFamily: 'Lato',
          ),
        ),
      ),
    );
  }
}
