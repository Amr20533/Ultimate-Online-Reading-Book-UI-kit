import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function press;
  final double verticalSize,fontSize;
  final String text;

  const RoundButton({super.key,
    required this.text,
    this.fontSize=16,
    this.verticalSize=16,
    required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){press();},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: verticalSize,horizontal: 30),
        margin: EdgeInsets.symmetric(vertical: verticalSize),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(offset: const Offset(0,15),blurRadius: 30,color: const Color(0xFF666666).withOpacity(0.11),
          )],
        ),
        child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontSize),),
      ),
    );
  }
}
