import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnasayfaUrunWidget extends StatefulWidget {
  String resimUrl = "";
  String baslik = "Adidas white sneakers for men";
  double usdFiyat = 68;
  double indirimOrani = 50;
  bool islike = false;
  String rating;
  int satisSayisi;

  AnasayfaUrunWidget(
      {super.key,
      required this.resimUrl,
      required this.baslik,
      required this.usdFiyat,
      required this.indirimOrani,
      required this.islike,
      required this.rating,
      required this.satisSayisi});

  @override
  State createState() {
    return _AnasayfaUrunWidgetState();
  }
}

// access modifier
class _AnasayfaUrunWidgetState extends State<AnasayfaUrunWidget> {
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
                image: AssetImage(widget.resimUrl), // Resim yolu
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                widget.satisSayisi > 5
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
                      widget.islike ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.islike = !widget.islike;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            widget.baslik,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '\$${(widget.usdFiyat * widget.indirimOrani).toStringAsFixed(2)} ', // %50 indirimli fiyat
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${widget.usdFiyat}  ',
                style: const TextStyle(
                  color: Color.fromARGB(115, 2, 2, 2),
                  fontSize: 11,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                '${(widget.indirimOrani * 100).toStringAsFixed(0)}% OFF ',
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

  // @override
  // Widget build(BuildContext context) {
  //   return Card(
  //     child: Column(
  //       children: [
  //         Image.asset('assests/shoe.png'),
  //         Text(
  //           widget.baslik,
  //         ),
  //         Row(
  //           children: [
  //             Text(
  //               "\$${widget.usdFiyat}",
  //               style: const TextStyle(fontWeight: FontWeight.bold),
  //             ),
  //             const Text(
  //               '\$136',
  //               style: TextStyle(
  //                 decoration: TextDecoration.lineThrough,
  //               ),
  //             ),
  //              const Text(
  //               '50% OFF',
  //               style: TextStyle(
  //                 decoration: TextDecoration.lineThrough,
  //               ),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

