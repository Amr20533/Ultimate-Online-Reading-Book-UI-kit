import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';
import 'package:online_reading_book_app/models/book_model.dart';
import 'package:online_reading_book_app/widgets/details/book_details_bar.dart';
import 'package:online_reading_book_app/widgets/details/chapter_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.bookModel, required this.isFavorite});
  final BookModel bookModel;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
            Container(
              height:size.height * 0.46,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                image:DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.fitWidth,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.06,),
                  IconButton(
                      onPressed: ()=> Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_rounded, color: kBlackColor,)),
                  BookDetailsBar(bookModel: bookModel,
                  isFavorite: isFavorite,
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.44),
              child: Column(mainAxisSize: MainAxisSize.min,
                children: List.generate(bookModel.chapters.length, (chapterIndex){
                  final chapter = bookModel.chapters[chapterIndex];
                  return ChapterCard(
                    press:(){

                    },
                    name: chapter.chapterTitle,
                    tag: chapter.chapterTag,
                    chapterNumber: chapterIndex + 1,
                  );
                }),),
            )
          ],)
        ],
      ),
    );
  }
}

