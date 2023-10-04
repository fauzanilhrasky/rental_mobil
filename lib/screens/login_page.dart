import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dashboard_page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key})
      : super(key: key); // Perbaiki deklarasi constructor
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  String _email = "";
  String _password = "";

  void _handleLogin() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      if (userCredential.user != null) {
        Navigator.pushReplacement(
          // Menggunakan pushReplacement agar tidak bisa kembali ke halaman login
          context,
          MaterialPageRoute(
            builder: (context) =>
                DashboardScreen(), // Menggunakan DashboardPage() bukan DashboardApp()
          ),
        );
        print("User logged in: ${userCredential.user!.email}");
      }
    } catch (e) {
      print("Error during login: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Tolong isi email anda";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passController,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Tolong isi password anda";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _handleLogin();
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    minimumSize: Size(250, 50),
                    primary: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
