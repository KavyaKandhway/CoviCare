import 'package:covicare/screens/sections.dart';
import 'package:flutter/material.dart';

import 'helpers/google_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF9432),
          title: Text("CoviCare"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 30,
              ),
            ),
            TextButton(
              onPressed: () {
                print("Login with email");
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width - 20, 50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFF9432))),
              child: Text("Login with Email",
                  style: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                print("Login with Phone");
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width - 20, 50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFF9432))),
              child: Text(
                "Login with Phone",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                signInWithGoogle().then((result) {
                  if (result != null) {
                    print("ll");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Section()),
                    );
                  }
                });
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width - 20, 50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFF9432))),
              child: Text("Login with Google",
                  style: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
