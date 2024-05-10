import 'package:flutter/material.dart';
import 'package:uts_project/bookmark.dart';

class DetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Beasiswa'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40.0),
            Text(
              'Program Beasiswa 2',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Beasiswa Riset',
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
              children: <Widget>[
                Text(
                  '1. Mahasiswa harus sedang menempuh program magister atau doktoral.',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '2. Melakukan penelitian yang relevan dengan bidang studi.',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '3. Membuat laporan kemajuan setiap semester.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
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
              'Beasiswa akan berlangsung selama 2 tahun.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _addToBookmark(context, {
                  'kategori': 'Beasiswa Riset',
                  'ketentuan': [
                    'Mahasiswa harus sedang menempuh program magister atau doktoral.',
                    'Melakukan penelitian yang relevan dengan bidang studi.',
                    'Membuat laporan kemajuan setiap semester.'
                  ],
                  'durasi': '2 tahun',
                });
              },
              child: Text('Tambahkan ke Bookmark'),
            ),
          ],
        ),
      ),
    );
  }

  void _addToBookmark(BuildContext context, Map<String, dynamic> data) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookmarkPage(data: data)),
    );
  }
}
