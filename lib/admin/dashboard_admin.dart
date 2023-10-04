import 'package:flutter/material.dart';
import 'package:project_1/screens/welcome_screen.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: DashboardAdminScreen(),
      ),
    );
  }
}

class DashboardAdminScreen extends StatefulWidget {
  @override
  _DashboardAdminScreenState createState() => _DashboardAdminScreenState();
}

class _DashboardAdminScreenState extends State<DashboardAdminScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.green.shade700,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 5,
                            height: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Cari jenis mobil...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    // Aksi yang akan dijalankan saat tombol filter ditekan
                    // Tambahkan logika filter sesuai kebutuhan
                  },
                ),
                // LOGOUT
                IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0), // Tambahkan padding ke kiri
                    child: Icon(Icons.logout),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Konfirmasi Logout'),
                          content: Text('Apakah Anda yakin ingin logout?'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Tidak'),
                              onPressed: () {
                                Navigator.of(context).pop(); // Tutup alert
                              },
                            ),
                            TextButton(
                              child: Text('Ya'),
                              onPressed: () {
                                // Aksi yang akan dijalankan saat tombol 'Ya' pada alert ditekan
                                // Tambahkan logika logout sesuai kebutuhan

                                // Navigasi ke halaman WelcomeScreen dan hapus semua halaman di atasnya
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => WelcomeScreen(),
                                  ),
                                  (Route<dynamic> route) => false,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        // Gunakan ListView untuk memungkinkan scrolling ke bawah
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            width: double.infinity,
            height: 200,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => DashboardAdminScreen(),
            ));
          } else if (index == 1) {
            // Handle navigasi ke layar notifikasi
          } else if (index == 2) {
            // Handle navigasi ke layar profile
          } else if (index == 3) {
            // Handle navigasi ke layar settings
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: 'Profile',
          ),
        ],
      ),
      // Tombol "Create Data" di atas konten
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan logika untuk membuat data baru di sini
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green.shade700,
      ),
    );
  }
}
