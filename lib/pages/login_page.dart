import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _loading= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Giriş Sayfası")),
          if(_loading) CircularProgressIndicator()
          else
          TextButton(
            onPressed: () {
              _loading= true;
              setState(() {
                FirebaseAuth.instance.signInAnonymously();
              });
            },
            child: Text("Giriş Yap"),
          ),
        ],
      ),
    );
  }
}
