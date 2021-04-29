import 'dart:ui';

import 'package:flutter/material.dart';

class BlogExtend extends StatefulWidget {
  @override
  _BlogExtendState createState() => _BlogExtendState();
}

class _BlogExtendState extends State<BlogExtend> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text(
                "My Past Experience",
                style: TextStyle(color: Colors.black, fontSize: 30),
                textAlign: TextAlign.left,
              ),
            ),
            ),
            Center(
              child: Image(
                image: AssetImage('images/sample.jpg'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
              child: Text(
                "nbqsdjkljfbqksdsbfmkqsd kjsddbffjkqsdbjfkq ikqdnfjk;qwdnflq kjqdbf",
                style: TextStyle(color: Colors.black, fontSize: 10),
                maxLines: 10
              ),
            ),
          ],
        ),
      ),
    );
  }
}

