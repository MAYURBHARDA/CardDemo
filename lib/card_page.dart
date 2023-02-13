import 'package:flutter/material.dart';

import 'cardPractice.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() {
    return CardPageState();
  }
}

class CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        backgroundColor: Colors.blueGrey[700],
      ),
      backgroundColor: Colors.orange[200],
      body: Center(
        child: Card(
          shadowColor: Colors.blue,
          elevation: 10.0,
          color: Colors.white,
          borderOnForeground: true,
          semanticContainer: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text("The Enchanted Nightingale"),
                subtitle: Text('Music by Julie Gable. Lyrics by Sydney Stein '),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const CardPractice()));
                      },
                      child: const Text("Buy Tickets")),
                  const SizedBox(
                    width: 8,
                  ),
                  TextButton(onPressed: () {}, child: const Text("Listen")),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
