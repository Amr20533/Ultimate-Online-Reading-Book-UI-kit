import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10,),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: const Offset(3,7),
                color:const Color(0x0fd3d3d3).withOpacity(.5))
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const Icon(Icons.star_outline,size: 16,color: kIconColor),
          const SizedBox(height: 8.0,),
          Text("$score",style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
        ],),)
    ;
  }
}
