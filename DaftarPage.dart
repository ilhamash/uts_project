import 'package:uts_project/HomePage.dart';
import 'package:flutter/material.dart';

class daftar extends StatefulWidget {
  const daftar({super.key});

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 20.0),
                    const Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(children: <Widget>[
                  const SizedBox(height: 20.0),
                  const Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      fillColor: const Color.fromARGB(255, 201, 201, 201)
                          .withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Alamat",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      fillColor: const Color.fromARGB(255, 201, 201, 201)
                          .withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Jenis Kelamin",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      fillColor: const Color.fromARGB(255, 201, 201, 201)
                          .withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Asal Kampus",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none),
                      fillColor: const Color.fromARGB(255, 201, 201, 201)
                          .withOpacity(0.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton('Daftar', Color(0xFFBBB265), () {
                      // Navigasi ke halaman detail beasiswa ketika tombol ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color color, VoidCallback? onPressed) {
    return Container(
      width: 143,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
      child: TextButton(
        onPressed: onPressed, // Jalankan fungsi onPressed saat tombol ditekan
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Gotham Black',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
