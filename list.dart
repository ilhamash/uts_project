import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_project/product.dart';

void main() {
  runApp(MaterialApp(
    home: ListPage(),
  ));
}

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> categories = [
    'akademik',
    'Non-Akademik',
    'Olahraga',
  ];

  List<String> selectedCategories = [];


  @override
  Widget build(BuildContext context) {
    final filterproducts = productlist.where((product) {
      return selectedCategories.isEmpty || 
      selectedCategories.contains(product.category);
    }).toList();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
        centerTitle: true,
      ),
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
                label: Text(category), onSelected: (selected) {
                  setState(() {
                    if (selected) {
                    selectedCategories.add(category);
                  }else {
                    selectedCategories.remove(category);
                  }
                  });
                }))

              .toList(),
            )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filterproducts.length, // Tambahkan itemCount
              itemBuilder: (context, index) {
                // Periksa apakah indeks dalam rentang yang valid
                if (index >= 0 && index < filterproducts.length) {
                  final product = filterproducts[index];
                  return Card(
                    elevation: 8.0,
                    margin: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.indigoAccent),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        title: Text(
                          product.name,
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          product.category,
                          style: const TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  );
                } else {
                  // Handle jika indeks tidak valid
                  return SizedBox(); // Atau widget lain sebagai placeholder
                }
              },
            ),
          )
        ]
      )
    );

  }
}