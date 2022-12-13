// ignore_for_file: deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:login_page_day_23/login.dart';

class SignupPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Full Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Full Name is required';
                          },
                        )),
                    SizedBox(height: 10.0),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            hintText: 'Enter Address',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Address is required';
                          },
                        )),
                    SizedBox(height: 10.0),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Email is required';
                          },
                        )),
                    SizedBox(height: 10.0),
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
                    SizedBox(height: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new MaterialButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final Future<ConfirmAction?> action =
                                  await _asyncConfirmDialog(context);
                              print("Confirm Action $action");
                              const Text(
                                "Create",
                                style: TextStyle(fontSize: 50.0),
                              );
                            }
                            ;
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ConfirmAction { Cancel, Submit }

Future<Future<ConfirmAction?>> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Successfuly created!'),
        content: const Text('This will provide you queue number'),
        actions: <Widget>[
          MaterialButton(
            child: const Text('Submit'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
      );
    },
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
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
