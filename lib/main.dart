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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: TextField(
              controller: teFirstValue,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter first value"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),
            child: TextField(
              controller: teSecondValue,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter second value"),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: MaterialButton(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20),
              child: Text(
                "7",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              onPressed: () {
                setState(() {
                  double firstValue = double.parse(teFirstValue.text);
                  double secondValue = double.parse(teSecondValue.text);
                  double answer = firstValue + secondValue;
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
            )),
            Expanded(
                child: MaterialButton(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20),
              child: Text(
                "8",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
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
            )),
            Expanded(
                child: MaterialButton(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20),
              child: Text(
                "9",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              onPressed: () {
                setState(() {
                  double firstValue = double.parse(teFirstValue.text);
                  double secondValue = double.parse(teSecondValue.text);
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
            )),
            // Expanded(
            //     child: Container(
            //         padding: EdgeInsets.all(25),
            //         color: Colors.blueAccent,
            //         child: IconButton(
            //           icon: const Icon(Icons.backspace),
            //           onPressed: () {
            //             setState(() {
            //               double firstValue = double.parse(teFirstValue.text);
            //               double secondValue = double.parse(teSecondValue.text);
            //               double answer = firstValue - secondValue;
            //               Fluttertoast.showToast(
            //                   msg: "Answer: $answer",
            //                   toastLength: Toast.LENGTH_SHORT,
            //                   gravity: ToastGravity.BOTTOM,
            //                   timeInSecForIosWeb: 1,
            //                   backgroundColor: Colors.red,
            //                   textColor: Colors.white,
            //                   fontSize: 16.0);
            //             });
            //           },
            //         ))),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.blueAccent,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.backspace),  onPressed: () {
                      setState(() {
                        double firstValue = double.parse(teFirstValue.text);
                        double secondValue = double.parse(teSecondValue.text);
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
                    }, label: Text(""),
                    ))),
          ]),
          Wrap(spacing: 10, children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.all(15),
              ),
              child: Text(
                "+",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              onPressed: () {
                setState(() {
                  double firstValue = double.parse(teFirstValue.text);
                  double secondValue = double.parse(teSecondValue.text);
                  double answer = firstValue + secondValue;
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
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.all(15),
              ),
              child: Text(
                "/",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
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
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.all(15),
              ),
              child: Text(
                "-",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              onPressed: () {
                setState(() {
                  double firstValue = double.parse(teFirstValue.text);
                  double secondValue = double.parse(teSecondValue.text);
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
            ),
          ])
        ],
      ),
    );
  }
}
