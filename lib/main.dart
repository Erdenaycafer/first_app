import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

final PageController controller = PageController(initialPage: 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext baglam) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          shape:
              Border.all(style: BorderStyle.solid, color: Colors.transparent),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 124, 0, 0),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.category_outlined),
                title: const Text('Shop by Categories'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.timelapse_outlined),
                title: const Text('My Orders'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.favorite_outline_rounded),
                title: const Text('Favourites'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.question_answer_outlined),
                title: const Text('FAQs'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Addresses'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.credit_card_outlined),
                title: const Text('Saved Cards'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.edit_document),
                title: const Text('Terms & Conditions'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Privacy Policy'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Search Anything...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 209, 213, 219),
                            width: 1)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [Text("Categories"), Spacer(), Text("View All ->")],
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.laptop),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.laptop),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.laptop),
                          ),
                          const Text("Fashion"),
                        ],
                      ),
                    ),
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: InkWell(
                          onTap: () {},
                          child: const Column(
                            children: [
                              Icon(Icons.laptop),
                              Text("Fashion"),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 390,
                height: 400,
                child: PageView(
                  controller: controller,
                  children: <Widget>[
                    Center(
                      child: Image.asset('assets/images/image1.jpeg'),
                    ),
                    Center(
                      child: Image.asset('assets/images/image2.jpeg'),
                    ),
                    Center(
                      child: Image.asset('assets/images/image3.jpeg'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Deal of the day",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // Yazıyı kalın yapar
                          ),
                        ),
                        Spacer(),
                        Text("View All ->"),
                      ],
                    ),
                    Row(
                      children: [
                        CountdownTimer(),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Wrap(
                              spacing: 80.0, // Resimler arasındaki yatay boşluk
                              runSpacing: 16.0, // Satırlar arasındaki boşluk
                              alignment: WrapAlignment.center,
                              children: [
                                MyImageWithText(
                                  imageUrl: 'assets/images/image_140.png',
                                  text: '%40 OFF',
                                ),
                                MyImageWithText(
                                  imageUrl: 'assets/images/image_140.png',
                                  text: '%60 OFF',
                                ),
                                MyImageWithText(
                                  imageUrl: 'assets/images/image_140.png',
                                  text: 'Lorem ipsum',
                                ),
                                // Daha fazla MyImageWithText widget'ı buraya eklenebilir
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [Padding(padding: const EdgeInsets.all(25.0))],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  Duration _remainingTime = Duration();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    DateTime startTime = DateTime.now();
    DateTime targetTime = startTime.add(const Duration(days: 2));

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      DateTime currentTime = DateTime.now();

      setState(() {
        _remainingTime = targetTime.difference(currentTime);

        if (_remainingTime.isNegative) {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int days = _remainingTime.inDays;
    int hours = _remainingTime.inHours % 24;
    int minutes = _remainingTime.inMinutes % 60;
    int seconds = _remainingTime.inSeconds % 60;

    return Container(
      width: 200,
      height: 30,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 124, 0, 0),
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$hours',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20, // Saatlerin boyutu daha büyük
                ),
              ),
              const TextSpan(
                text: ' hrs ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextSpan(
                text: '$minutes',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20, // Dakikaların boyutu daha büyük
                ),
              ),
              const TextSpan(
                text: ' min ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextSpan(
                text: '$seconds',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20, // Saniyelerin boyutu daha büyük
                ),
              ),
              const TextSpan(
                text: ' sec',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyImageWithText extends StatelessWidget {
  final String imageUrl;
  final String text;

  const MyImageWithText({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl), // Resim yolu
              fit: BoxFit.cover,
            ),
            borderRadius:
                BorderRadius.circular(8), // İsteğe bağlı köşe yuvarlama
          ),
        ),
        const SizedBox(height: 8), // Resim ile yazı arasına boşluk ekler
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
