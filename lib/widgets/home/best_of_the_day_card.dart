import 'package:flutter/material.dart';
import 'package:online_reading_book_app/widgets/home/best_card_data.dart';
import 'package:online_reading_book_app/widgets/home/tow_side_button.dart';

Stack bestOfTheDayCard(Size size, BuildContext context) {
  return Stack(
    children: [
      Container(
        margin:const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(29))
        ),
        height: 245,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  left: 24,
                  top: 24,
                  right: size.width * .35,
                ),

                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: const BestCardData(),
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: TowSideButton(
                  text: "Read",
                  radius: 24,
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        right: 10,
        top: 0,
        child: Image.asset(
          "assets/images/book-3.png",
          width: size.width * .37,
        ),
      ),

    ],
  );
}

