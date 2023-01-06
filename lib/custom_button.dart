import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final MaterialAccentColor color;
  final double paddingValue;
  final String buttonText;

  const CustomButton(this.paddingValue, this.buttonText, this.color);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        print(buttonText);
      },
      color: color,
      padding: EdgeInsets.all(paddingValue),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
      ),
    );
  }
}
