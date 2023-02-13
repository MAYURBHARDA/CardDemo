import 'package:card_demo/cardgrid.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() {
    return CardListState();
  }
}

class CardListState extends State<CardList> {
  List<String> names = ['Jay', 'Dipesh', 'Mayur', 'Tarun'];
  List<String> lastname = ['Prajapati', 'Chariya', 'Bharda', 'Rathod'];
  List<String> cities = ['Palanpur', 'Veraval', 'Somnath', 'Rajasthan'];
  List<String> img = [
    'assets/tablet.png',
    'assets/pixel.png',
    'assets/diamond.png',
    'assets/floppy.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card List"),
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.greenAccent,
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => CardGrid(),
                  ),
                );
              },
              onDoubleTap: () {
                Navigator.pop(context);
              },
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.album,
                          size: 80.00,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(names[index]),
                            Text(lastname[index]),
                            Text(cities[index]),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          img[index],
                          width: 100,
                          height: 100,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
