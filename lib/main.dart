import 'package:flutter/material.dart';

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
              decoration: InputDecoration(
                hintText: "Enter first value"
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),
            child: TextField(
              controller: teSecondValue,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter second value"
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent
              ),
              child: Text("+",style: TextStyle(color: Colors.white,fontSize: 25),),
              onPressed: (){
                setState(() {
                  double firstValue = teFirstValue.text as double;
                  double secondValue = teSecondValue.text as double;
                  double answer = firstValue+secondValue;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(answer.toString())));
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
