import 'package:covicare/screens/blogs.dart';
import 'package:covicare/screens/home.dart';
import 'package:covicare/screens/medicine.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SectionPage(title: 'CoviCare Home Page'),
    );
  }
}

class SectionPage extends StatefulWidget {
  SectionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SectionPageState createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  int _currentIndex = 0;

  final appheading = [
    'Home',
    'Blogs',
    'Local Store',
  ];

  final tabs = [
    Home(),
    Blog(),
    Medicine(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[100],
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          title: Text(
            appheading[_currentIndex],
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyan[100],
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.black : Colors.black38,
            )),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.add_comment,
                  color: _currentIndex == 1 ? Colors.black : Colors.black38,
                )),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.local_grocery_store,
              color: _currentIndex == 2 ? Colors.black : Colors.black38,
            ))
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
