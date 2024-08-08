import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Row, Stack, Expand, Örneği'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.red,
                      child: const Text('Kırmızı Kutu'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.blue,
                      child: const Text('Mavi Kutu'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 54, 244, 79),
                      child: const Text('Yeşil Kutu'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 300,
                        color: Colors.purple,
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 200,
                              color: Colors.yellow,
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              color: Colors.orange,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
