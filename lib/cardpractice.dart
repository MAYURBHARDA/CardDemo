import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardPractice extends StatefulWidget {
  const CardPractice({super.key});

  @override
  State<CardPractice> createState() {
    return CardPracticeState();
  }
}

class CardPracticeState extends State<CardPractice> {
  //List<String> items;
  // List<String> items = List<String>.generate(20, (index) => '$index');
  List<String> names = ['Mayur', 'Nikhil', 'Vatsal', 'Rakesh'];
  List<String> lastname = ['Bharda', 'Bheda', 'Sonpal', 'Solanki'];
  List<String> cities = ['Somnath', 'Junagadh', 'Junagadh', 'Mendarda'];
  List<String> img = [
    'assets/tablet.png',
    'assets/pixel.png',
    'assets/diamond.png',
    'assets/floppy.png'
  ];

  void showToast() {
    Fluttertoast.showToast(
        msg: "You are fail",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Practice"),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.blue,
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                // showToast();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => const CardList(),
                //   ),
                // );
              },
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        left: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.album,
                            size: 50,
                            color: Colors.blueGrey,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(names[index]),
                              Text(lastname[index]),
                              Text(cities[index]),
                            ],
                          ),
                        ],
                      ),
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
