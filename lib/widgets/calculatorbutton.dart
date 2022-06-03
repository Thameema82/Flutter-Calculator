import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(
      {Key? key,
       this.text,
       this.fillcolor,
       this.textColor,
       this.textSize,
      this.callback})
      : super(key: key);
  final String? text;
  final int? fillcolor;
  final int? textColor;
  final double? textSize;
  final Function? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          onPressed: () => callback!(text),
          color: Color(fillcolor!),
          textColor: Color(textColor!),
          child: Text(
            text!,
            style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSize),),
          ),
        ),
      ),
    );
  }
}
