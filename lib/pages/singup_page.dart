import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  var _loading = false;
  var _hataMesaji = "";
  var _nameSurname = "";
  var _email = "";
  var _sifre = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kayıt Sayfası')),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(hintText: "İsim ve Soyisim"),
              keyboardType: TextInputType.name,
              onChanged: (deger) {
                _nameSurname = deger;
                if (_hataMesaji.isNotEmpty) {
                  _hataMesaji = "";
                  setState(() {});
                }
              },
            ),
            const SizedBox(height: 24),
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
              },
            ),
            const SizedBox(height: 24),
            if (_hataMesaji.isNotEmpty) Text("Bir hata oluştu: $_hataMesaji"),
            if (_loading)
              CircularProgressIndicator()
            else
              TextButton(
                onPressed: () {
                  if (_email.isNotEmpty &&
                      _sifre.isNotEmpty &&
                      _nameSurname.isNotEmpty) {
                    _loading = true;
                    setState(() {});
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: _email,
                      password: _sifre,
                    )
                        .catchError(
                      (hataMesaji) {
                        _hataMesaji = hataMesaji.toString();
                        _loading = false;
                        setState(() {});
                      },
                    ).then((value) async {
                      final uid = value.user?.uid;
                      final userData = {
                        'name': _nameSurname,
                        'email': _email,
                        'kayitTarihi': FieldValue.serverTimestamp(),
                      };
                      if (uid == null) {
                        await FirebaseFirestore.instance
                            .collection('users')
                            .add(userData);
                      } else {
                        await FirebaseFirestore.instance
                            .collection('users')
                            .doc(uid)
                            .set(userData);
                      }
                      if (mounted) Navigator.of(context).pop();
                    });
                  } else {
                    _hataMesaji = "Email adresi ve şifre boş geçilemez.";
                    setState(() {});
                  }
                },
                child: Text("Üye Ol"),
              ),
          ],
        ),
      ),
    );
  }
}
