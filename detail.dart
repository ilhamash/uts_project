import 'package:flutter/material.dart';
import 'package:uts_project/bookmark.dart';

class DetailPage extends StatelessWidget {
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
            Text(
              'Program Beasiswa 1',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Beasiswa Akademik',
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
                  '1. Mahasiswa harus memiliki IPK minimal 3.5.',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '2. Tidak sedang menerima beasiswa lain.',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '3. Aktif dalam kegiatan kemahasiswaan.',
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
              'Beasiswa akan berlangsung selama 1 tahun.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                _addToBookmark(context, {
                  'kategori': 'Beasiswa Akademik',
                  'ketentuan': [
                    'Mahasiswa harus memiliki IPK minimal 3.5.',
                    'Tidak sedang menerima beasiswa lain.',
                    'Aktif dalam kegiatan kemahasiswaan.'
                  ],
                  'durasi': '1 tahun',
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
