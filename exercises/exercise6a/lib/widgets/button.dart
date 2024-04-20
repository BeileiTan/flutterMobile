import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget{
  final String text;
  final Color bgColor;
  final Color textColor;
  final double textSize;
  final Function callback;

  // Constructor with all parameters
  const ButtonDesign({
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
  });

  // Constructor with only 'text' parameter, and default values for others
  ButtonDesign.textOnly({
    required this.text,
    this.bgColor = Colors.white70, // Default background color
    this.textColor = Colors.black, // Default text color
    this.textSize = 17.0, // Default text size
    required this.callback,
  });

  @override
  Widget build(BuildContext context){
    return  Container(
      margin: const EdgeInsets.all(17.0),
      child: SizedBox(
        width: 58,
        height: 58,
        child: ElevatedButton(
          child: Text(text,
            style: new TextStyle(
              fontSize: textSize,
              color: textColor,
            ),
          ),
          onPressed: () => callback(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
          ),
        ),
      ),
    );
  }
}