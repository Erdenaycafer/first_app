import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({super.key, required this.imageUrl, required this.title});

  String imageUrl = '';
  String title = '';

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        highlightColor: const Color.fromARGB(255, 177, 178, 179),
        onTap: () {
          //
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(
                //widget.imageUrl,
                'assets/images/fashionIcon.png',
                width: 48.0,
                height: 48.0,
              ),
              const SizedBox(height: 4.0),
              Text(
                widget.title,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
