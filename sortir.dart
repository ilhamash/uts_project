import 'package:flutter/material.dart';

// Definisikan enum untuk kategori beasiswa
enum BeasiswaCategory { All, Sosial, Akademik, Olahraga }

class BeasiswaScreen extends StatefulWidget {
  @override
  _BeasiswaScreenState createState() => _BeasiswaScreenState();
}

class _BeasiswaScreenState extends State<BeasiswaScreen> {
  BeasiswaCategory selectedCategory = BeasiswaCategory.All;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beasiswa'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue, // Warna latar belakang biru langit
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButton<BeasiswaCategory>(
                    value: selectedCategory,
                    onChanged: (BeasiswaCategory? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedCategory = newValue;
                        });
                      }
                    },
                    items: [
                      DropdownMenuItem<BeasiswaCategory>(
                        value: BeasiswaCategory.All,
                        child: Text(
                          'Semua Kategori',
                          style: TextStyle(color: Colors.white), // Warna teks putih
                        ),
                      ),
                      DropdownMenuItem<BeasiswaCategory>(
                        value: BeasiswaCategory.Sosial,
                        child: Text(
                          'Sosial',
                          style: TextStyle(color: Colors.white), // Warna teks putih
                        ),
                      ),
                      DropdownMenuItem<BeasiswaCategory>(
                        value: BeasiswaCategory.Akademik,
                        child: Text(
                          'Akademik',
                          style: TextStyle(color: Colors.white), // Warna teks putih
                        ),
                      ),
                      DropdownMenuItem<BeasiswaCategory>(
                        value: BeasiswaCategory.Olahraga,
                        child: Text(
                          'Olahraga',
                          style: TextStyle(color: Colors.white), // Warna teks putih
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = BeasiswaCategory.All;
                    });
                  },
                  icon: Icon(Icons.clear, color: Colors.white), // Warna ikon putih
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: _buildBeasiswaList(selectedCategory),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  List<Widget> _buildBeasiswaList(BeasiswaCategory category) {
    // Logika untuk membangun daftar beasiswa berdasarkan kategori
    List<Widget> beasiswaList = [];

    // Mengganti logika di bawah sesuai dengan kebutuhan aplikasi Anda
    switch (category) {
      case BeasiswaCategory.All:
        beasiswaList.addAll([
          _buildBeasiswaItem('Beasiswa Sosial 1'),
          _buildBeasiswaItem('Beasiswa Sosial 2'),
          _buildBeasiswaItem('Beasiswa Sosial 3'),
          _buildBeasiswaItem('Beasiswa Akademik 1'),
          _buildBeasiswaItem('Beasiswa Akademik 2'),
          _buildBeasiswaItem('Beasiswa Akademik 3'),
          _buildBeasiswaItem('Beasiswa Olahraga 1'),
          _buildBeasiswaItem('Beasiswa Olahraga 2'),
          _buildBeasiswaItem('Beasiswa Olahraga 3'),
        ]);
        break;
      case BeasiswaCategory.Sosial:
        beasiswaList.addAll([
          _buildBeasiswaItem('Beasiswa Sosial 1'),
          _buildBeasiswaItem('Beasiswa Sosial 2'),
          _buildBeasiswaItem('Beasiswa Sosial 3'),
        ]);
        break;
      case BeasiswaCategory.Akademik:
        beasiswaList.addAll([
          _buildBeasiswaItem('Beasiswa Akademik 1'),
          _buildBeasiswaItem('Beasiswa Akademik 2'),
          _buildBeasiswaItem('Beasiswa Akademik 3'),
        ]);
        break;
      case BeasiswaCategory.Olahraga:
        beasiswaList.addAll([
          _buildBeasiswaItem('Beasiswa Olahraga 1'),
          _buildBeasiswaItem('Beasiswa Olahraga 2'),
          _buildBeasiswaItem('Beasiswa Olahraga 3'),
        ]);
        break;
    }

    return beasiswaList;
  }

  Widget _buildBeasiswaItem(String title) {
    return ListTile(
      title: Text(title),
      onTap: () {
        // Logika untuk menangani ketika item beasiswa diklik
        // Misalnya, pindah ke halaman detail beasiswa
      },
    );
  }
}



void main() {
  runApp(MaterialApp(
    home: BeasiswaScreen(),
  ));
}
