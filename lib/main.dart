import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  print("İlk işlem başarılı olarak çalıştırıldı.");
  //islem(selamlamaMetni, sayi);

  runApp(myApp);
}

String name = "Erdenay";

Widget myApp = MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: const Text("Home"),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            size: 30,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_bag,
            size: 30,
          ),
          onPressed: () {},
        ),
      ],
      //centerTitle: true,
    ),
    body: Center(
      child: Text(
        'Hello $name! How are you?',
      ),
    ),
    drawer: const Drawer(),
  ),
);

String selamlamaMetni = 'Merhaba Arkadaşlar';

int sayi = 5;

String isim = "Erdenay";
String soyisim = "Cafer";

int yas = 22;
double kilo = 70.45;

bool askerlikYaptimi = false;

List<int> okullaGecenYillar = [2013, 2014, 2015, 2016];

class Insan {
  String isim;
  String soyisim;

  int yas;

  double kilo;

  bool askerlikYaptimi;

  List<int> okullaGecenYillar;

  Insan(
    this.isim,
    this.soyisim,
    this.yas,
    this.kilo,
    this.askerlikYaptimi,
    this.okullaGecenYillar,
  ) {
    print('Insan sınıfı oluşturuldu.');
  }
}

class Ogrenci extends Insan {
  String okulNumara;
  String okulIsmi;

  Ogrenci(
    super.isim,
    super.soyisim,
    super.yas,
    super.kilo,
    super.askerlikYaptimi,
    super.okullaGecenYillar,
    this.okulNumara,
    this.okulIsmi,
  ) {
    print('Ogrenci sınıfı oluşturuldu.');
  }
}
