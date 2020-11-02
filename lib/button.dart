import 'constant.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    this.backgroundColor = Colors.transparent,
    this.textColor = Colors.black,
    @required this.text,
    @required this.press, TextStyle style,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: FlatButton(
          color: backgroundColor,
          padding: EdgeInsets.all(22),
          onPressed: press,
          child: Text(
            "$text",
            style: TextStyle(
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}