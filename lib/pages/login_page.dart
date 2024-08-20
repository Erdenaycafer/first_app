import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main_app/pages/singup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _loading = false;
  var _hataMesaji = "";
  var _email = "";
  var _sifre = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Giriş Sayfası')),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 222, 222),
            borderRadius:
                BorderRadius.circular(8.0), // Sınırın köşe yuvarlaklığı
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(hintText: "Email adresini gir"),
                keyboardType: TextInputType.emailAddress,
                onChanged: (deger) {
                  _email = deger;
                  if (_hataMesaji.isNotEmpty) {
                    _hataMesaji = "";
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 24),
              TextField(
                  decoration: InputDecoration(hintText: "Şifreni gir"),
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (deger) {
                    _sifre = deger;
                    if (_hataMesaji.isNotEmpty) {
                      _hataMesaji = "";
                      setState(() {});
                    }
                  }),
              const SizedBox(height: 15),
              if (_hataMesaji.isNotEmpty) Text("Bir hata oluştu: $_hataMesaji"),
              Wrap(
                spacing: 15,
                children: [
                  if (_loading)
                    CircularProgressIndicator()
                  else
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) {
                              return const SingUpPage();
                            },
                          ),
                        );
                      },
                      child: Text("Üye Ol"),
                    ),
                  if (_loading)
                    CircularProgressIndicator()
                  else
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 15, 15, 15),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (_email.isNotEmpty && _sifre.isNotEmpty) {
                          _loading = true;
                          setState(() {});
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: _email,
                            password: _sifre,
                          )
                              .catchError((hataMesaji) {
                            _hataMesaji = hataMesaji.toString();
                            _loading = false;
                            setState(() {});
                          });
                        } else {
                          _hataMesaji = "Email adresi ve şifre boş geçilemez.";
                          setState(() {});
                        }
                      },
                      child: Text("Giriş Yap"),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
