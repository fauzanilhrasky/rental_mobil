import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(RentalApp());
}

class RentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RentalHomePage(),
    );
  }
}

class RentalHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OniCars'),
        backgroundColor: Color.fromARGB(255, 142, 33, 243),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Nikmati Perjalanan Anda dengan Aman dan Nyaman!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            ),
            child: Text(
              'Masuk',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Tambahkan fungsi untuk tombol daftar sekarang di sini
            },
            child: Text(
              'Daftar Sekarang',
              style: TextStyle(
                color: Color.fromARGB(255, 142, 33, 243),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        color: Color.fromARGB(255, 142, 33, 243),
        child: Text(
          'Dapatkan diskon 20% untuk pemesanan pertama!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
