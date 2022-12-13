import 'package:flutter/material.dart';
import 'package:login_page_day_23/login.dart';
import 'package:login_page_day_23/signup.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/fourth': (context) => const FourthRoute(),
    },
  )); //MaterialApp
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Automatic identity verification which enables you to verify your identity",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/cv.png')),
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                      minWidth: 200.0,
                      height: 40,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      color: Colors.lightGreen,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curriculum Vitae'),
        backgroundColor: Colors.lightGreen,
      ), // AppBar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.green[200],
              backgroundImage: AssetImage('images/mary1.jpeg'),
            ),
            Text(
              'MARY MELODY ALVENDIA',
              style: TextStyle(
                fontFamily: 'Rajdhani-Medium',
                fontSize: 25.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'IT',
              style: TextStyle(
                fontFamily: 'ChakraPetch-Medium',
                color: Colors.black87,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightGreen,
                  ),
                  title: Text(
                    '+6392222283',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'ChakraPetch-Medium',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'maryalvendia@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontFamily: 'ChakraPetch-Medium'),
                ),
              ),
            ),
            TextButton.icon(
                label: Text(
                  'About me',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                icon: Icon(
                  Icons.account_box_outlined,
                  color: Colors.lightGreen,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                }),
            SizedBox(height: 10.0), // ElevatedButton
            TextButton.icon(
                label: Text(
                  'Professional background',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                icon: Icon(
                  Icons.cases_rounded,
                  color: Colors.lightGreen,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                }),
            SizedBox(height: 30.0),
            TextButton.icon(
                label: Text(
                  'LOGOUT',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                icon: Icon(
                  Icons.logout_rounded,
                  color: Colors.lightGreen,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                })
            // ElevatedButton
          ],
        ),
      ),
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        backgroundColor: Colors.lightGreen,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.work,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Career Objectives',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontFamily: 'ChakraPetch-Medium',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Seeking for a position as a web developer where I can apply my knowledge of web design with my abilities to meet client needs and exceed their expectations',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home_sharp,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Address',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontFamily: 'ChakraPetch-Medium',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  '78, Malioer, Bayambang, Pangasinan ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Philippines'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontFamily: 'ChakraPetch-Medium',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    'Bachelor of Science in Information Technology 2020-2024'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I'm a programmer and a freshly graduated out of college"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.album,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Trustworthy, Multi-Tasking, Loyalty "),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Web-Development',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I have a experience to developing website using PHP,HTML,CSS and knowledge to front-end"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'ChakraPetch-Medium ',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("NCII holder in Computer System Servicing "),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}
