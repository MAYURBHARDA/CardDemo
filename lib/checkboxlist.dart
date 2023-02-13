import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 14.0,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.blue,
    textColor: Colors.white,
  );
}

class CheckBoxList extends StatefulWidget {
  const CheckBoxList({super.key});

  @override
  State<CheckBoxList> createState() {
    return CheckBoxListState();
  }
}

class CheckBoxListState extends State<CheckBoxList> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUser();

  List<String> title = ["ios", "android", "laptop", "pendrive"];
  List<String> img = [
    "assets/iphone.jpg",
    "assets/pixel.png",
    "assets/laptop.jpg",
    "assets/pendrive.jpg",
  ];
  final List<bool> _isCheck = [true, false, false, false];
  //bool _isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Testing"),
          backgroundColor: Colors.blueGrey[700],
        ),
        body: ListView.builder(
          itemCount: title.length,
          //checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CheckboxListTile(
                      activeColor: Colors.pink[300],
                      dense: true,
                      title: Text(
                        title[index],
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ),
                      value: _isCheck[index],
                      secondary: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          img[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      onChanged: (bool? val) {
                        setState(() {
                          _isCheck[index] = val!;
                        });
                        showToast(title[index].toString());
                        //itemChange(val!, index);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  late int userId;
  late String img;
  late String title;
  late bool isCheck;

  CheckBoxListTileModel(this.userId, this.img, this.title, this.isCheck);

  static List<CheckBoxListTileModel> getUser() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(1, "assets/iphone.jpg", "iOS", true),
      CheckBoxListTileModel(2, "assets/pixel.png", "Android", false),
      CheckBoxListTileModel(3, "assets/laptop.jpg", "Laptop", false),
      CheckBoxListTileModel(4, "assets/pendrive.jpg", "Pendrive", false),
    ];
  }
}
