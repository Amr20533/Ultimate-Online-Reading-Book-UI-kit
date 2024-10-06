import 'package:flutter/material.dart';
import 'package:online_reading_book_app/layout/details_screen.dart';
import 'package:online_reading_book_app/models/book_model.dart';
import 'package:online_reading_book_app/widgets/details/book_rating.dart';
import 'package:online_reading_book_app/widgets/home/read_and_details_bar.dart';

class ReadingListCard extends StatefulWidget {
  final BookModel bookModel;
  final Function? pressRead;

  const ReadingListCard({
    super.key,
    required this.bookModel,
    this.pressRead,
  });

  @override
  State<ReadingListCard> createState() => _ReadingListCardState();
}

class _ReadingListCardState extends State<ReadingListCard> {
  late bool isFavorite;

  @override
  void initState() {
    isFavorite = widget.bookModel.isFavorite;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 265,
      width: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                // boxShadow: [
                //   BoxShadow(
                //     offset: const Offset(0, 10),
                //     blurRadius: 33,
                //     color: kShadowColor,
                //   ),
                // ],
              ),
            ),
          ),
          Image.asset(
            widget.bookModel.image,
            width: 150,
          ),
          Positioned(
            top: 55,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                    tapTargetSize: MaterialTapTargetSize.padded,
                  ),
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
                Positioned(
                  top: 25,
                  right: 10,
                  child: BookRating(score: widget.bookModel.ratings)),
              ],
            ),
          ),
          Positioned(
            top: 178,
            child: ReadAndDetailsBar(
                title: widget.bookModel.title,
                auth: widget.bookModel.author,
                pressDetails: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreen(
                            bookModel: widget.bookModel,
                            isFavorite: isFavorite,
                        );
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

