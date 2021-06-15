import 'package:flutter/material.dart';

import 'package:project_part2/sidebar/sidebar_layout.dart';

import 'forgot.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String email;
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _obscure = true;
  void _show() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //to specify if the body should resize when the keyboard appears
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: formkey,
          autovalidate: true,
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
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Lato'),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 5, 10, 10),
                child: Text(
                  'Log In to your Account',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                      fontSize: 20,
                      fontFamily: 'Lato'),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        prefixIcon: Icon(Icons.email_outlined,
                            size: 30, color: Colors.black),
                        labelText: 'Email',
                        // hintStyle: TextStyle(color: Colors.grey),
                        // hintText: 'Enter Email Id',
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Lato'),
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please enter Email";
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return "Please enter valid Email";
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        email = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide()),
                          prefixIcon: Icon(
                            Icons.vpn_key_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lato'),
                          suffixIcon: IconButton(
                            color: Colors.black,
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _show,
                          )),
                      obscureText: _obscure,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "* Required";
                        } else if (value.length < 6) {
                          return "Password should be atleast 6 characters";
                        } else if (value.length > 15) {
                          return "Password should not be greater than 15 characters";
                        } else
                          return null;
                      },
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(0, 15, 30, 40),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Forgot()));
                  },
                  child: Text('Forgot password?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontFamily: 'Lato')),
                ),
              ),
              Container(
                alignment: Alignment.center,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => SideBarLayout()),
                    );
                  },
                  child: Text(
                    'Log In',
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
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Don\'t have an account? ',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lato')),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Lato'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
