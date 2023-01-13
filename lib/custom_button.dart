import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final double paddingValue;
  final String buttonText;
  final MaterialAccentColor color;
  final VoidCallback onClick;
  const CustomButton(this.paddingValue, this.buttonText, this.color, {Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onClick,
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

