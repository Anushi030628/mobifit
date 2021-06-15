import 'package:flutter/material.dart';

import 'login.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //to specify if the body should resize when the keyboard appears
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 50, 0, 10),
              icon: Icon(Icons.arrow_back_ios_sharp,
                  size: 30, color: Colors.black),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Signin()),
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Lato'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Text(
                'Please Enter your Mobile number and will send you OTP to return to your Account',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontFamily: 'Lato'),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide()),
                      prefixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                      labelText: 'Enter Mobile No.',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Lato'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              // ignore: deprecated_member_use
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                onPressed: () {},
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Lato'),
                ),
                color: Colors.black,
                elevation: 15,
                highlightElevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
