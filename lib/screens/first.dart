import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFF9432),
            title: Text("CoviCare"),
          ),
          body: Text("ppp"),
        ),
      ),
    );
  }
}
