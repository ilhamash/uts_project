import 'package:flutter/material.dart';
import 'package:uts_project/HomePage.dart';
import 'package:uts_project/Login_page.dart';
import 'package:uts_project/bookmark.dart';
import 'package:uts_project/bookmarksbm.dart';
import 'Register_Page.dart';

class ProfilePage extends StatelessWidget {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        children: [
          // Profile image
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage(
                'https://wisehealthynwealthy.com/wp-content/uploads/2022/01/CreativecaptionsforFacebookprofilepictures.jpg'),
          ),

          // Profile name
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: const Text('John Doe'),
            ),
          ),

          // Profile email
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: const Text('johndoe@example.com'),
            ),
          ),

          // Profile bio
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          const Divider(),

          // Service
          _buildListTile(
            icon: Icons.info,
            title: 'Tentang Saya',
            subtitle:
                'Mahasiswa S1 Ilmu Komputer dengan spesialisasi Analisis Data dan Big Data.',
          ),
          const Divider(),

          _buildListTile(
            icon: Icons.school,
            title: 'Pendidikan',
            subtitle: 'Institut Tinggi Ilmu Komputer dan Multimedia Sfax',
          ),
          const Divider(),

          _buildListTile(
            icon: Icons.language,
            title: 'Bahasa',
            subtitle: 'Bahasa Indonesia, Bahasa Inggris',
          ),
          const Divider(),

          _buildListTile(
            icon: Icons.phone,
            title: 'Kontak',
            subtitle: '+62 123 456 789',
          ),
          const Divider(),

          _buildListTile(
            icon: Icons.email,
            title: 'Email',
            subtitle: 'example@example.com',
          ),
          const Divider(),

          _buildListTile(
            icon: Icons.link,
            title: 'Media Sosial',
            subtitle: Row(
              children: const <Widget>[
                Icon(Icons.facebook),
                SizedBox(width: 8.0),
                Icon(Icons.whatshot),
              ],
            ),
          ),

          const Divider(),

          // Profile settings
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Edit profile button
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () {
                      // Handle the button press here.
                    },
                    child: const Text('Edit Profile'),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                // Logout button
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () => _navigateToSignIn(context: context),
                    child: const Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          (() {
            _currentIndex = index;
          });
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
        },
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

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required dynamic subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        tileColor: Colors.purple.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        subtitle: subtitle is Widget ? subtitle : Text(subtitle),
      ),
    );
  }

  // Goto SignIn Page
  void _navigateToSignIn({required BuildContext context}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }
}
