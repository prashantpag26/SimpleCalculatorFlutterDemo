import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SimpleCalculatorScreen(),
    );
  }
}

class SimpleCalculatorScreen extends StatefulWidget {
  @override
  State<SimpleCalculatorScreen> createState() => _SimpleCalculatorScreenState();
}

class _SimpleCalculatorScreenState extends State<SimpleCalculatorScreen> {
  final teFirstValue = TextEditingController();
  final teSecondValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(32),
                    child: Text(
                      "Testing",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  flex: 5,
                ),
                Expanded(
                  child: Row(children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: buildMaterialButton(22.5, "7",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "8",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "9",Colors.blueAccent)),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: buildMaterialButton(22.5, "4",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "5",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "6",Colors.blueAccent)),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: buildMaterialButton(22.5, "1",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "2",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "3",Colors.blueAccent)),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: buildMaterialButton(22.5, "0",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, ".",Colors.blueAccent)),
                                Expanded(child: buildMaterialButton(22.5, "=",Colors.blueAccent)),
                              ]),
                        ],
                      ),
                      flex: 4,
                    ),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                                    child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orangeAccent,
                                  padding: EdgeInsets.fromLTRB(27, 20, 27, 20)),
                              icon: const Icon(
                                Icons.backspace,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  double firstValue =
                                      double.parse(teFirstValue.text);
                                  double secondValue =
                                      double.parse(teSecondValue.text);
                                  double answer = firstValue - secondValue;
                                  Fluttertoast.showToast(
                                      msg: "Answer: $answer",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                });
                              },
                              label: Text(""),
                            ))),
                            Expanded(child: buildMaterialButton(20, "÷",Colors.orangeAccent)),
                            Expanded(child: buildMaterialButton(20, "x",Colors.orangeAccent)),
                            Expanded(child: buildMaterialButton(20, "-",Colors.orangeAccent)),
                            Expanded(child: buildMaterialButton(20, "+",Colors.orangeAccent)),
                          ],
                        ),
                        flex: 1),
                  ]),
                  flex: 4,
                )
              ],
            )));
  }

  MaterialButton buildMaterialButton(double paddingValue, String buttonText, MaterialAccentColor color) {
    return MaterialButton(
      color: color,
      padding: EdgeInsets.all(paddingValue),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
      ),
      onPressed: () {
        setState(() {
          FocusManager.instance.primaryFocus?.unfocus();
          double firstValue = double.parse(teFirstValue.text);
          double secondValue = double.parse(teSecondValue.text);
          double answer = firstValue / secondValue;
          Fluttertoast.showToast(
              msg: "Answer: $answer",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        });
      },
    );
  }
}
