import 'package:flutter/material.dart';
import 'package:uts_project/HomePage.dart';
import 'package:uts_project/bookmarksbm.dart';
import 'package:uts_project/profile_detail.dart';
  
class BookmarkPage extends StatelessWidget {
  final Map<String, dynamic> data;

  BookmarkPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmark Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Kategori Beasiswa',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              data['kategori'],
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Ketentuan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<Widget>.generate(
                data['ketentuan'].length,
                (index) => Text(
                  '${index + 1}. ${data['ketentuan'][index]}',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Durasi Beasiswa',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              data['durasi'],
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}