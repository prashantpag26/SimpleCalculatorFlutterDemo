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
                    child: Text("Testing",style: TextStyle(color: Colors.white,fontSize: 30),),
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
                                Expanded(
                                    child: MaterialButton(
                                  color: Colors.blueAccent,
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "8",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
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
                                )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: MaterialButton(
                                  color: Colors.blueAccent,
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
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
                                )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: MaterialButton(
                                  color: Colors.blueAccent,
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
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
                                )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: MaterialButton(
                                  color: Colors.blueAccent,
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      double firstValue =
                                          double.parse(teFirstValue.text);
                                      double secondValue =
                                          double.parse(teSecondValue.text);
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
                                  padding: EdgeInsets.all(22.5),
                                  child: Text(
                                    "=",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
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
                                )),
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
                                  padding:
                                      EdgeInsets.fromLTRB(27,20,27,20)),
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
                            Expanded(
                                child: MaterialButton(
                              color: Colors.orangeAccent,
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "÷",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
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
                            )),
                            Expanded(
                                child: MaterialButton(
                              color: Colors.orangeAccent,
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
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
                            )),
                            Expanded(
                                child: MaterialButton(
                              color: Colors.orangeAccent,
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
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
                            )),
                            Expanded(
                                child: MaterialButton(
                                  color: Colors.orangeAccent,
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
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
                                )),
                          ],
                        ),
                        flex: 1
                    ),
                  ]),
                  flex: 4,
                )
              ],
            )));
  }
}
