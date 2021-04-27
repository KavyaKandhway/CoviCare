import 'package:flutter/material.dart';

import 'helpers/google_auth.dart';
import 'screens/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
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
              FlatButton(
                onPressed: () {
                  print("Login with email");
                },
                color: Color(0xFFFF9432),
                minWidth: 350.0,
                height: 50.0,
                child: Text("Login with Email"),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  print("Login with Phone");
                },
                color: Color(0xFFFF9432),
                minWidth: 350.0,
                height: 50.0,
                child: Text("Login with Phone"),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  signInWithGoogle().then((result) {
                    if (result != null) {
                      print(result);
                    }
                  });
                },
                color: Color(0xFFFF9432),
                minWidth: 350.0,
                height: 50.0,
                child: Text("Login with Google"),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
