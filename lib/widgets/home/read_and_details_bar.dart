import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';
import 'package:online_reading_book_app/widgets/home/tow_side_button.dart';

class ReadAndDetailsBar extends StatelessWidget {
  const ReadAndDetailsBar({
    super.key,
    required this.title,
    required this.auth,
    required this.pressDetails,
  });

  final String title;
  final String auth;
  final Function? pressDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 202,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: RichText(
              maxLines: 2,
              text: TextSpan(
                style: const TextStyle(color: kBlackColor),
                children: [
                  TextSpan(
                    text: "$title\n",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: auth,
                    style: const TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(children: [
            GestureDetector(
              onTap: (){
                pressDetails!();
              },
              child: Container(alignment: Alignment.center,height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 101,
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(15),
                //   border: Border.all(color: kBlackColor)),
                child:const Text('Details'),
              ),
            ),
            TowSideButton(
              press: (){},
              text: "Read",
            )
          ],),
        ],
      ),
    );
  }
}
