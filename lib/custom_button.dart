import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsets paddingValue;
  final String buttonText;
  final MaterialAccentColor color;
  final VoidCallback onClick;
  final Color textColor;
  final int type;
  final IconData icon;

  const CustomButton(this.paddingValue, this.buttonText, this.color, this.type,
      {Key? key,
      this.textColor = Colors.white,
      this.icon = Icons.backspace,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == 0) {
      return MaterialButton(
        onPressed: onClick,
        color: color,
        padding: paddingValue,
        child: Text(
          buttonText,
          style: TextStyle(
              color: textColor, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      );
    } else {
      return Container(
          child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: color, padding: paddingValue),
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: onClick,
        label: const Text(""),
      ));
    }
  }
}
