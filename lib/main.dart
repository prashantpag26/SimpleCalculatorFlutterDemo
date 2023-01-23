import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simple_calculator_flutter_demo/calculate_controller.dart';
import 'package:get/get.dart';

import 'custom_button.dart';

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
  final controller = Get.put(CalculateController());

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
                    child: Obx(() {
                      return Text(
                        controller.inputExpression.value,
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      );
                    }),
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(32),
                    child: Obx(() {
                      return Text(
                        controller.output.value,
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      );
                    }),
                  ),
                  flex: 1,
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
                                    child: CustomButton(
                                  22.5,
                                  "7",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("7");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "8",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("8");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "9",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("9");
                                  },
                                )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "4",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("4");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "5",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("5");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "6",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("6");
                                  },
                                )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "1",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("1");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "2",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("2");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "3",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("3");
                                  },
                                )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "0",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar("0");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  ".",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.addChar(".");
                                  },
                                )),
                                Expanded(
                                    child: CustomButton(
                                  22.5,
                                  "=",
                                  Colors.blueAccent,
                                  onClick: () {
                                    controller.evaluateExpressions();
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
                                  padding: EdgeInsets.fromLTRB(27, 20, 27, 20)),
                              icon: const Icon(
                                Icons.backspace,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  controller.removeChar();
                                });
                              },
                              label: Text(""),
                            ))),
                            Expanded(
                                child: CustomButton(
                              20,
                              "÷",
                              Colors.orangeAccent,
                              onClick: () {
                                controller.addChar("÷");
                              },
                            )),
                            Expanded(
                                child: CustomButton(
                              20,
                              "x",
                              Colors.orangeAccent,
                              onClick: () {
                                controller.addChar("x");
                              },
                            )),
                            Expanded(
                                child: CustomButton(
                              20,
                              "-",
                              Colors.orangeAccent,
                              onClick: () {
                                controller.addChar("-");
                              },
                            )),
                            Expanded(
                                child: CustomButton(
                              20,
                              "+",
                              Colors.orangeAccent,
                              onClick: () {
                                controller.addChar("+");
                              },
                            )),
                          ],
                        ),
                        flex: 1),
                  ]),
                  flex: 4,
                )
              ],
            )));
  }
}
