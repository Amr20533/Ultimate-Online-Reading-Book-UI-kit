import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';

class TowSideButton extends StatelessWidget {
  final Function press;
  final double radius;
  final String text;

  const TowSideButton({super.key,
    this.radius=29,
    required this.press,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child:GestureDetector(
      onTap: (){press();},
      child: Container(
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(radius),bottomRight: Radius.circular(radius)),
        ),
        child:Text(text,style:const TextStyle(color: Colors.white),),
      ),
    ));
  }
}
