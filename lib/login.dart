// ignore_for_file: body_might_complete_normally_nullable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login_page_day_23/main.dart';
import 'package:login_page_day_23/signup.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Please log in",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter email',
                                    prefixIcon: Icon(Icons.email_outlined),
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (String value) {},
                                  validator: (value) {
                                    if (value == null || value.isEmpty)
                                      return 'Email required';
                                  },
                                )),
                            SizedBox(height: 30.0),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 35),
                                child: TextFormField(
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter password',
                                    prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (String value) {},
                                  validator: (value) {
                                    if (value == null || value.isEmpty)
                                      return 'Password is required';
                                  },
                                )),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Container(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border(
                                    bottom: BorderSide(color: Colors.black),
                                    top: BorderSide(color: Colors.black),
                                    left: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Container(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                      top: BorderSide(color: Colors.black),
                                      left: BorderSide(color: Colors.black),
                                      right: BorderSide(color: Colors.black),
                                    )),
                                child: MaterialButton(
                                  minWidth: 200.0,
                                  height: 40,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondRoute()));
                                      return;
                                    }
                                  },
                                  color: Colors.lightGreen,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    "Log in",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 20.0),
                                TextButton.icon(
                                  label: Text(
                                    'Signup',
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.navigate_next,
                                    color: Colors.lightGreen,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignupPage()));
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
