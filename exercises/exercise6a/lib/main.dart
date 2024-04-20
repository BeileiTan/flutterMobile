import 'package:flutter/material.dart';
import './widgets/button.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {

  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  int firstNum = 0;
  int secondNum = 0;
  String textToDisplay = '';
  String res = '';
  String operation = '';
  String history = '';

  void btnOnClick(String btnVal) {
    if (btnVal == 'C') {
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else
    if (btnVal == '+' || btnVal == '-' || btnVal == 'x' || btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Caculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Caculator"),
        ),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(history, style: new TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(textToDisplay, style: new TextStyle(
                      fontSize: 48,
                    ),),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonDesign.textOnly(
                      text: '7',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '8',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '9',
                      callback: btnOnClick,
                    ),
                    ButtonDesign(
                      text: 'x',
                      bgColor: Colors.grey,
                      textColor: Colors.black,
                      textSize: 18,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonDesign.textOnly(
                      text: '4',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '5',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '6',
                      callback: btnOnClick,
                    ),
                    ButtonDesign(
                      text: '/',
                      bgColor: Colors.grey,
                      textColor: Colors.black,
                      textSize: 18,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonDesign.textOnly(
                      text: '1',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '2',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '3',
                      callback: btnOnClick,
                    ),
                    ButtonDesign(
                      text: '+',
                      bgColor: Colors.grey,
                      textColor: Colors.black,
                      textSize: 18,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonDesign.textOnly(
                      text: '=',
                      bgColor: Colors.orange,
                      textColor: Colors.white,
                      textSize: 18,
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: '0',
                      callback: btnOnClick,
                    ),
                    ButtonDesign.textOnly(
                      text: 'C',
                      bgColor: Colors.grey,
                      textColor: Colors.black,
                      textSize: 18,
                      callback: btnOnClick,
                    ),
                    ButtonDesign(
                      text: '-',
                      bgColor: Colors.grey,
                      textColor: Colors.black,
                      textSize: 18,
                      callback: btnOnClick,
                    ),
                  ],
                ),
              ],)
        ),
      ),
    );
  }
}