import 'package:flutter/material.dart';
import 'package:project_1/screens/welcome_screen.dart';
import 'package:project_1/detail/detail_page.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                  onPressed: _showLogoutDialog,
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildCarItem(
            'Mitsubishi Lancer',
            'Sedan',
            'Rp. 400.000/Days',
            'images/sedan/evo lancer.png',
          ),
          _buildCarItem(
            'Toyota Avanza',
            'SUV',
            'Rp. 350.000/Days',
            'images/SUV/avanza.png',
          ),
          _buildCarItem(
            'Hyundai Tucson SE',
            'MPV',
            'Rp. 400.000/Days',
            'images/Hyundai-Tucson.png',
          ),
          _buildCarItem(
            'Toyota Alphard',
            'SUV',
            'Rp. 1.000.000/Days',
            'images/alphard.png',
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
              builder: (BuildContext context) => DashboardScreen(),
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
    );
  }

  Widget _buildCarItem(
      String title, String category, String price, String imagePath) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => DetailApp(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(20.0),
        width: double.infinity,
        height: 150,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 170,
              height: 170,
            ),
            SizedBox(
              width: 14.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey.shade600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Center(
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog() {
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
  }
}
