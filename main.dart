import 'package:flutter/material.dart';
import 'package:uts_project/HomePage.dart';
import 'package:uts_project/Login_page.dart';
import 'package:uts_project/bookmarksbm.dart';
import 'sortir.dart';
import 'detail.dart';
import 'package:uts_project/bookmarksbm.dart';
import 'profile_detail.dart';
import 'bookmark.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookmark App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>LoginPage(),
        '/bookmark': (context) => Home(),
      },
    );
  }
}
