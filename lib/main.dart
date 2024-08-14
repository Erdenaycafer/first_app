import 'dart:async';
import 'dart:ui';
// import 'package:card_swiper/card_swiper.dart';
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
                  color: Color.fromARGB(255, 37, 37, 39),
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
              // Swiper(
              //   itemBuilder: (BuildContext context, int index) {
              //     return Image.asset('assets/images/sliderSnickers.png');
              //   },
              //   itemCount: 3,
              //   pagination: const SwiperPagination(),
              //   control: const SwiperControl(),
              // ),
              SizedBox(
                width: 390,
                height: 400,
                child: PageView(
                  controller: controller,
                  children: <Widget>[
                    Center(
                      child: Image.asset('assets/images/sliderSnickers.png'),
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
              const SizedBox(height: 16),
              Container(
                color: const Color.fromARGB(255, 237, 237, 237),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(5), // Border radius
                              ),
                              child: const Center(
                                child: Wrap(
                                  spacing: 15.0,
                                  runSpacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    MyImageWithText(
                                      imageUrl: 'assets/images/shoe.png',
                                      text: 'Sneakers',
                                      discountText: '%40 OFF',
                                    ),
                                    MyImageWithText(
                                      imageUrl: 'assets/images/shoe.png',
                                      text: 'Running shoes',
                                      discountText: '%40 OFF',
                                    ),
                                    MyImageWithText(
                                      imageUrl: 'assets/images/shoe.png',
                                      text: 'Lorem ipsum',
                                      discountText: '%40 OFF',
                                    ),
                                    MyImageWithText(
                                      imageUrl: 'assets/images/shoe.png',
                                      text: 'Lorem ipsum',
                                      discountText: '%40 OFF',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hot Selling Footwear',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text("View All ->"),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                          HotSellingImages(
                            imageUrl: 'assets/images/shoe.png',
                            title: 'Lorem impsum lorem impsum',
                            price: 136,
                            discountRate: 0.5,
                            rate: '4',
                            isLiked: true,
                            sellerCount: 6,
                          ),
                          HotSellingImages(
                            imageUrl: 'assets/images/shoe.png',
                            title: 'Lorem impsum lorem impsum',
                            price: 193,
                            discountRate: 0.5,
                            rate: '4',
                            isLiked: false,
                            sellerCount: 4,
                          ),
                          HotSellingImages(
                            imageUrl: 'assets/images/shoe.png',
                            title: 'Lorem impsum lorem impsum',
                            price: 48,
                            discountRate: 0.5,
                            rate: '4',
                            isLiked: true,
                            sellerCount: 3,
                          ),
                          HotSellingImages(
                            imageUrl: 'assets/images/shoe.png',
                            title: 'Lorem impsum lorem impsum',
                            price: 136,
                            discountRate: 0.5,
                            rate: '4',
                            isLiked: true,
                            sellerCount: 6,
                          ),
                          HotSellingImages(
                            imageUrl: 'assets/images/shoe.png',
                            title: 'Lorem impsum lorem impsum',
                            price: 136,
                            discountRate: 0.5,
                            rate: '4',
                            isLiked: true,
                            sellerCount: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 15, 15, 15),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Color.fromARGB(255, 15, 15, 15),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          // currentIndex: _selectedIndex, // Seçili sekmenin indeksini belirtir
          // onTap: _onItemTapped, // Sekmeye tıklama işlemi
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
  Duration _remainingTime = const Duration();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    DateTime startTime = DateTime.now();
    DateTime targetTime = startTime.add(const Duration(days: 2));

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        DateTime currentTime = DateTime.now();

        setState(
          () {
            _remainingTime = targetTime.difference(currentTime);

            if (_remainingTime.isNegative) {
              _timer.cancel();
            }
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //int days = _remainingTime.inDays;
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
                  fontSize: 20,
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
                  fontSize: 20,
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
                  fontSize: 20,
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
  final String discountText;

  const MyImageWithText({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.discountText,
  });

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
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            //fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 100,
          height: 20,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 182, 48, 38),
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          child: Text(
            discountText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              //fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class HotSellingImages extends StatefulWidget {
  final String imageUrl;
  final String title;
  final double price;
  final double discountRate;
  final String rate;
  final bool isLiked;
  final int sellerCount;

  const HotSellingImages({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discountRate,
    required this.rate,
    required this.isLiked,
    required this.sellerCount,
  });

  @override
  _HotSellingImagesState createState() => _HotSellingImagesState();
}

class _HotSellingImagesState extends State<HotSellingImages> {
  late String imageUrl;
  late String title;
  late double price;
  late double discountRate;
  late String rate;
  late bool isLiked = false;
  late int sellerCount;

  @override
  void initState() {
    super.initState();
    imageUrl = widget.imageUrl;
    title = widget.title;
    price = widget.price;
    discountRate = widget.discountRate;
    rate = widget.rate;
    isLiked = widget.isLiked;
    sellerCount = widget.sellerCount;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 148,
      height: 235,
      child: Column(
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
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                sellerCount > 5
                    ? Positioned(
                        top: 5,
                        left: 5,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 81, 0),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'Top Seller',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox
                        .shrink(), // Koşul sağlanmadığında boş bir widget döndürür

                Positioned(
                  right: 1,
                  child: IconButton(
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '\$${(price * discountRate).toStringAsFixed(2)} ', // %50 indirimli fiyat
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${price}  ',
                style: const TextStyle(
                  color: Color.fromARGB(115, 2, 2, 2),
                  fontSize: 11,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                '${(discountRate * 100).toStringAsFixed(0)}% OFF ',
                style: TextStyle(
                  color: Colors.orange.shade700,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
