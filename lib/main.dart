import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: Signup(),
    debugShowCheckedModeBanner: false,
  ));
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String name, ownername, mobile, email;
  TextEditingController password = TextEditingController();

  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void _submit() {
    final form = formkey.currentState;

    if (form.validate()) {
      form.save();

      performSignin();
    }
  }

  void performSignin() {
    final snackbar = new SnackBar(
      content: new Text("Email:$email, password:$password"),
    );
    scaffoldkey.currentState.showSnackBar(snackbar);
  }

  bool _obscure = true;
  void _show() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 10.0,
        title: Text(
          "Sign Up",
          style: TextStyle(fontFamily: 'Lato'),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: formkey,
                    autovalidate: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 40,
                                fontFamily: 'Lato'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 10, 10),
                          child: Text(
                            'Sign Up to take the First Step',
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
                              padding: EdgeInsets.fromLTRB(30, 12, 30, 20),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person_sharp,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  labelText: 'Company Name',
                                  //hintStyle: TextStyle(color: Colors.grey),
                                  // hintText: 'Enter Name',
                                  labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Lato'),
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return "Please enter Name";
                                  }
                                  return null;
                                },
                                onSaved: (String name) {
                                  name = name;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 12, 30, 20),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person_sharp,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  labelText: 'Owner Name',
                                  //hintStyle: TextStyle(color: Colors.grey),
                                  // hintText: 'Enter Name',
                                  labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Lato'),
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return "Please enter Owner Name";
                                  }
                                  return null;
                                },
                                onSaved: (String ownername) {
                                  ownername = name;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.phone_android_outlined,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  labelText: 'Mobile',
                                  // hintStyle: TextStyle(color: Colors.grey),
                                  // hintText: 'Enter Mobile No.',
                                  labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Lato'),
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return "Please enter phone number";
                                  }
                                  return null;
                                },
                                onSaved: (String value) {
                                  mobile = value;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
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
                                  if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
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
                              padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide()),
                                  prefixIcon: Icon(Icons.lock,
                                      size: 30, color: Colors.black),
                                  labelText: 'Password',
                                  // hintStyle: TextStyle(color: Colors.grey),
                                  // hintText: 'Enter Password',
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
                                  ),
                                ),
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
                          alignment: Alignment.center,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                            onPressed: () {
                              _submit();
                            },
                            child: Text('Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Lato')),
                            color: Colors.black,
                            elevation: 15,
                            highlightElevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Already have an account? ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Lato')),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signin()));
                              },
                              child: Text(
                                'Log in',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
