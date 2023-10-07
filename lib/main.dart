import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_1/screens/dashboard_page.dart';
import 'package:project_1/screens/login_page.dart';
import 'package:project_1/screens/welcome_screen.dart';
import 'package:project_1/screens/registrasi_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User = snapshot.data;
          if (User == null) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: LoginApp(),
            );
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: DashboardScreen(),
            );
          }
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
