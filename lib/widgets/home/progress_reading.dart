import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';

class ProgressReading extends StatelessWidget {
  const ProgressReading({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38.5),
          color: Colors.white,
          boxShadow: [BoxShadow(offset: const Offset(0,10),blurRadius: 33,color: kShadowColor)]
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 20),
            child: Row(
              children: [
                const Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Crushing & Influence',style:TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('Gary venchuk',style: TextStyle(color: kLightBlackColor),),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text('Chapter 7 of 10',style:TextStyle(fontSize:10,color: kLightBlackColor)),
                      ),
                    )
                  ],),),
                Image.asset('assets/images/book-1.png')
              ],),
          ),),
          Container(
            height: 7,
            width: size.width * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: kProgressIndicator
            ),
          )
        ],),
    );
  }
}
