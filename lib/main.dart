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
                createCustomeTexts(4, 50),
                createCustomeTexts(1, 30),
                Expanded(
                  flex: 4,
                  child: Row(children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: createCustomButtons(
                                  ["7", "8", "9"], 22.5, Colors.blueAccent)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: createCustomButtons(
                                  ["4", "5", "6"], 22.5, Colors.blueAccent)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: createCustomButtons(
                                  ["1", "2", "3"], 22.5, Colors.blueAccent)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: createCustomButtons(
                                  ["0", ".", "="], 22.5, Colors.blueAccent)),
                        ],
                      ),
                      flex: 4,
                    ),
                    Expanded(
                        child: Column(
                          children: createCustomButtons(
                              ["", "÷", "x", "-", "+"],
                              20,
                              Colors.orangeAccent),
                        ),
                        flex: 1),
                  ]),
                )
              ],
            )));
  }

  Expanded createCustomeTexts(int flexValue, double fontSizeValue) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(32),
        child: Obx(() {
          return Text(
            controller.inputExpression.value,
            style: TextStyle(color: Colors.white, fontSize: fontSizeValue),
          );
        }),
      ),
      flex: flexValue,
    );
  }

  List<Widget> createCustomButtons(
      List<String> charArray, double padding, MaterialAccentColor color) {
    List<Widget> buttonList = [];
    for (String chr in charArray) {
      if (chr.isEmpty) {
        buttonList.add(Expanded(
            child: CustomButton(
          EdgeInsets.fromLTRB(27, 20, 27, 20),
          "",
          color,
          1,
          onClick: () {
            controller.removeChar();
          },
        )));
      } else {
        buttonList.add(Expanded(
            child: CustomButton(
          EdgeInsets.all(padding),
          chr,
          color,
          0,
          onClick: () {
            controller.addChar(chr);
          },
        )));
      }
    }
    return buttonList;
  }
}
