import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';
import 'package:online_reading_book_app/models/book_model.dart';
import 'package:online_reading_book_app/widgets/details/book_rating.dart';
import 'package:online_reading_book_app/widgets/home/round_button.dart';

class BookDetailsBar extends StatefulWidget {
  const BookDetailsBar({
    super.key,
    required this.bookModel,
    required this.isFavorite,
  });
  final BookModel bookModel;
  final bool isFavorite;

  @override
  State<BookDetailsBar> createState() => _BookDetailsBarState();
}

class _BookDetailsBarState extends State<BookDetailsBar> {
  late bool isFavorite;

  @override
  void initState() {
    isFavorite = widget.isFavorite;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.46,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.bookModel.title,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: kLightBlackColor),),
                    Text(widget.bookModel.subTitle,style:Theme.of(context).textTheme.headlineSmall!.copyWith(color: kBlackColor,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              children: [
                                Text(
                                  widget.bookModel.description,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: kLightBlackColor,
                                  ),
                                ),
                                // const SizedBox(height:20.0),
                                RoundButton(
                                    press:(){},
                                    text: 'Read',
                                    verticalSize:10),
                              ],)),
                        const SizedBox(width: 15.0,),
                        Column(children: [
                          IconButton(
                            onPressed: (){
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon( isFavorite ? Icons.favorite : Icons.favorite_outline),),
                          const SizedBox(height:5.0),
                          const BookRating(score:4.9),
                          const SizedBox(height:65.0),

                        ],)
                      ],
                    )
                  ],),
              ),
              Container(),
            ],
          ),
        ),
        Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(widget.bookModel.image, width: 180,)),

      ],
    );
  }
}
