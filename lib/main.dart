import 'package:card_demo/temp.dart';
import 'package:flutter/material.dart';
//import 'circular_progressbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Card Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //
      //home: DropDownFormFields(),
      //home: MyHomePage(),
      // home: DateTimePickerDemo(),
      // home: ReorderableListViews(),
      home: Temp(),
//       home: StackPosition(),
      //home: Drawers(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late String _myActivity;
//   late String _myActivityResult;
//   final formKey = GlobalKey<FormState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _myActivity = '';
//     _myActivityResult = '';
//   }
//
//   _saveForm() {
//     var form = formKey.currentState;
//     if (form!.validate()) {
//       form.save();
//       setState(() {
//         _myActivityResult = _myActivity;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown Formfield Example'),
//       ),
//       body: Center(
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 child: DropDownFormField(
//                   titleText: 'My workout',
//                   hintText: 'Please choose one',
//                   value: _myActivity,
//                   onSaved: (value) {
//                     setState(() {
//                       _myActivity = value;
//                     });
//                   },
//                   onChanged: (value) {
//                     setState(() {
//                       _myActivity = value;
//                     });
//                   },
//                   dataSource: [
//                     {
//                       "display": "Running",
//                       "value": "Running",
//                     },
//                     {
//                       "display": "Climbing",
//                       "value": "Climbing",
//                     },
//                     {
//                       "display": "Walking",
//                       "value": "Walking",
//                     },
//                     {
//                       "display": "Swimming",
//                       "value": "Swimming",
//                     },
//                     {
//                       "display": "Soccer Practice",
//                       "value": "Soccer Practice",
//                     },
//                     {
//                       "display": "Baseball Practice",
//                       "value": "Baseball Practice",
//                     },
//                     {
//                       "display": "Football Practice",
//                       "value": "Football Practice",
//                     },
//                   ],
//                   textField: 'display',
//                   valueField: 'value',
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   onPressed: _saveForm,
//                   child: Text('Save'),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 child: Text(_myActivityResult),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
