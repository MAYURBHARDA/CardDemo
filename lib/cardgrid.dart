import 'package:card_demo/radio_button.dart';
import 'package:flutter/material.dart';

class CardGrid extends StatefulWidget {
  const CardGrid({super.key});

  @override
  State<CardGrid> createState() {
    return CardGridState();
  }
}

class CardGridState extends State<CardGrid> {
  List<String> productImg = [
    'assets/iphone.jpg',
    'assets/laptop.jpg',
    'assets/pendrive.jpg',
    'assets/pixel.png',
    'assets/tablet.png'
  ];
  List<String> productName = [
    'I-Phone',
    'Laptop',
    'PenDrive',
    'Pixel',
    'Tablet'
  ];
  List<String> price = ['75000', '30000', '350', '35000', '10000'];
  int index = 0;
  // Color _iconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Card Grid"),
        backgroundColor: Colors.teal,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          5, growable: true,

          (index) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const RadioButtons(),
                      ));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          productImg[index],
                          width: 80,
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Text(
                            productName[index],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Price:',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text(price[index]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          //),
        ),
      ),
    );
  }
}
