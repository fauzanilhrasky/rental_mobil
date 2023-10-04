import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:project_1/screens/registrasi_page.dart'; // Import file registrasi_page.dart

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ONICARS',
              style: TextStyle(
                fontSize: 36.0, // Ukuran teks ONICARS
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60.0), // Jarak antara teks dan tombol "Masuk"
            ElevatedButton(
              onPressed: () {
                // Aksi yang akan dijalankan ketika tombol login ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoginPage()), // Navigasi ke halaman login
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 130.0), // Mengatur padding
                textStyle: TextStyle(
                    fontSize: 24), // Mengatur ukuran teks tombol menjadi besar
                primary: Colors.white, // Mengatur warna latar belakang
                backgroundColor: Colors.green.shade800, // Mengatur warna teks
              ),
              child: Text('Masuk'),
            ),
            SizedBox(
              height: 40.0,
            ), // Jarak antara tombol "Masuk" dan teks "Belum Punya Akun?"
            Text(
              'Belum Punya Akun?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // Aksi yang akan dijalankan ketika tombol registrasi ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const RegisterPage()), // Navigasi ke halaman registrasi
                );
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 110.0), // Mengatur padding
                textStyle: TextStyle(
                    fontSize:
                        24), // Mengatur ukuran teks tombol menjadi besar (misalnya, 24)
                primary: Colors.green.shade800, // Mengatur warna latar belakang
                side: BorderSide(
                    color: Colors.green), // Mengatur warna garis tepi
              ),
              child: Text('Registrasi'),
            ),
          ],
        ),
      ),
    );
  }
}
