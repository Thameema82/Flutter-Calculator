import 'package:calculator/widgets/calculatorbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
        backgroundColor: Color.fromARGB(255, 13, 37, 26),
      ),
      backgroundColor: Color(0xFF28572a),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                      textStyle:
                          TextStyle(fontSize: 24, color: Colors.blueGrey)),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 48, color: Colors.white)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 18,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  fillcolor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillcolor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  fillcolor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillcolor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillcolor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillcolor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillcolor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
