import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Profile UI',
      theme: ThemeData(),
      home: const Myaccountdosen(), // Halaman utama diatur melalui ProfileScreen
    );
  }
}

class Myaccountdosen extends StatelessWidget {
  const Myaccountdosen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 84, 40),
        automaticallyImplyLeading: false, 
        // Title dan Tombol Back
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: () {
                Navigator.pop(context); // Aksi untuk kembali ke halaman sebelumnya
              },
            ),
              Transform.translate(
              offset: const Offset(-15, 0),
              child: const Text(
                'My Account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),

      //body content
      
      // bottomNavigationBar: const MyAppBottomNav(),
      bottomNavigationBar: IgnorePointer(
        ignoring: true, // Mengabaikan semua interaksi pengguna
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), 
              label: 'Repository',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.upload_file_rounded), 
              label: 'Request',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: 'Profile',
            ),
          ],
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 239, 84, 40),
          unselectedItemColor: const Color(0xFF949494),
          currentIndex: 3,
          type: BottomNavigationBarType.fixed, // Fix label visibility
        ),
      ),

    );
  }
}
