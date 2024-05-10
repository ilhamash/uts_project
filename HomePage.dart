import 'package:flutter/material.dart';
import 'package:uts_project/bookmarksbm.dart';
import 'package:uts_project/detail2.dart';
import 'bookmark.dart';
import 'profile_detail.dart';
import 'detail.dart';
import 'DaftarPage.dart';
import 'product.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beasiswaku'),
      ),
      body: ListPage(), // Menggunakan ListPage sebagai body
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Menggunakan Navigator.pushReplacement untuk berpindah ke halaman baru
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Bookmarks()));
        break;
      case 2:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
        break;
    }
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> categories = ['akademik', 'Non-Akademik', 'Olahraga'];
  List<String> selectedCategories = [];
  List<product> filterProducts = [];

  @override
  Widget build(BuildContext context) {
    filterProducts = productlist.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product.category);
    }).toList();

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: categories
                  .map((category) => FilterChip(
                      selected: selectedCategories.contains(category),
                      label: Text(category),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            selectedCategories.add(category);
                          } else {
                            selectedCategories.remove(category);
                          }
                        });
                      }))
                  .toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filterProducts.length,
              itemBuilder: (context, index) {
                final product = filterProducts[index];
                return _buildCard(
                  title: product.name,
                  description: product.category,
                  backgroundColor: _getColorFromCategory(product.category),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorFromCategory(String category) {
    switch (category.toLowerCase()) {
      case 'akademik':
        return Colors.blueAccent;
      case 'non-akademik':
        return Colors.greenAccent;
      case 'olahraga':
        return Colors.orangeAccent;
      default:
        return Colors.purpleAccent;
    }
  }

  Widget _buildCard({
    required String title,
    required String description,
    required Color backgroundColor,
  }) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            description,
            style: const TextStyle(
                color: Colors.white, fontStyle: FontStyle.italic),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => daftar()),
                  );
                },
                child: Text(
                  'Daftar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 8), // Memberikan jarak antara tombol
              TextButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
                },
                child: Text(
                  'Detail',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDetailPage(BuildContext context, product product) {
    switch (product.name) {
      case 'beasiswa1':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
        break;
      case 'beasiswa2':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage2()));
        break;
      // tambahkan case lainnya sesuai kebutuhan
      default:
        // Apa yang harus dilakukan jika produk tidak sesuai
        break;
    }
  }
}