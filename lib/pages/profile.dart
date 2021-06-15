import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile",
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
