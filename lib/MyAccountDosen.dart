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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/Profile-dosen.jpg'),
              ),
            ),
            SizedBox(height: 20),
             Text(
              'Nama Lengkap',
              style: TextStyle(
                fontFamily: 'Poppins', // Poppins font untuk label
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
             ),
             SizedBox(height: 5),
             Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextFormField(
                  initialValue: 'Budiono Siregar',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF375E97),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: InputBorder.none, 
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Poppins', // Poppins font untuk label
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
            ),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextFormField(
                  initialValue: 'Budiono123@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF375E97),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: InputBorder.none, 
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'NIP',
              style: TextStyle(
                fontFamily: 'Poppins', // Poppins font untuk label
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextFormField(
                  initialValue: '1234567890',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF375E97),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: InputBorder.none, 
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Nomor Telepon',
              style: TextStyle(
                fontFamily: 'Poppins', // Poppins font untuk label
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextFormField(
                  initialValue: '08123456780',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF375E97),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: InputBorder.none, 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      
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
          selectedItemColor: const Color(0xFF949494),
          unselectedItemColor: const Color(0xFF949494),
          currentIndex: 3,
          type: BottomNavigationBarType.fixed, // Fix label visibility
        ),
      ),

    );
  }
}
