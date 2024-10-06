import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';
import 'package:online_reading_book_app/widgets/details/book_rating.dart';

class BestCardData extends StatelessWidget {
  const BestCardData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: const Text(
            "New York Time Best For 11th March 2020",
            style: TextStyle(
              fontSize: 9,
              color: kLightBlackColor,
            ),
          ),
        ),
        Text(
          "How To Win \nFriends &  Influence",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Text(
          "Gary Venchuk",
          style: TextStyle(color: kLightBlackColor),
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(right: 10.0),
                child: BookRating(score: 4.9),
              ),
               Expanded(
                child: Text(
                  "When the earth was flat and everyone wanted to win the game of the best and people….",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10,
                    color: kLightBlackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}