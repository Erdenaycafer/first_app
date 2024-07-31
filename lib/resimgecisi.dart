
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Resim Geçişi',
      theme: ThemeData(primarySwatch: Colors.blue
      ),
      home: ResimGecisi(),
    );
  }
}
//------

class ResimGecisi extends StatefulWidget
{
  @override
  ResimGecisiState createState()=> ResimGecisiState();
}

class ResimGecisiState extends State<ResimGecisi> {
  int _currentIndex=0;
  final List<String> _images =[
    'images/image1.jpeg',
    'images/image2.jpeg',
    'images/image3.jpeg'
  ];

  void _nextImage() {
    setState(() {
      _currentIndex=(_currentIndex+1)%_images.length;
    });
  }
  
  // -------


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Resim Geçişi'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 240,
            height: 240,
            child: Image.asset(_images[_currentIndex],
            ),
            ),
           const SizedBox(height: 30),
          ElevatedButton(
            style: const ButtonStyle(
    backgroundColor: WidgetStatePropertyAll <Color>(Colors.green),
        foregroundColor: WidgetStatePropertyAll <Color>(Colors.white)

  ),
            onPressed: _nextImage,
          child: Text('Sonraki Resim'),)
        ],
      ) ,
    ),
  );
  }
}

