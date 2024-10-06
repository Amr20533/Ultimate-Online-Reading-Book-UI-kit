import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';
import 'package:online_reading_book_app/utils/books_data.dart';
import 'package:online_reading_book_app/widgets/home/best_of_the_day_card.dart';
import 'package:online_reading_book_app/widgets/home/reading_list_card.dart';
import 'package:online_reading_book_app/widgets/home/progress_reading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_page_bg.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth
            )
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height* 0.1,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headlineSmall,
                    children: const [
                      TextSpan(text: "What are you \nreading ",style: TextStyle(color: kLightBlackColor)),
                      TextSpan(
                          text: "today?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(BooksData().books.length, (bookIndex){
                    final books = BooksData().books[bookIndex];
                    return ReadingListCard(
                      bookModel: books,
                    );
                  }),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
                child:RichText(text: TextSpan(style: Theme.of(context).textTheme.headlineSmall,
                    children: const [
                      TextSpan(text: 'Best of the ',style: TextStyle(color: kLightBlackColor)),
                      TextSpan(text: 'day',style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),),),
              bestOfTheDayCard(size,context),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child:RichText(text: TextSpan(style: Theme.of(context).textTheme.headlineSmall,
                      children: const [
                        TextSpan(text: 'Continue',style: TextStyle(color: kLightBlackColor)),
                        TextSpan(text: ' Reading...',style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),)),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(38.5),
                  child: ProgressReading(size: size),
                ),
              ),
              const SizedBox(height: 20,),

            ],
          ),
            ),
          ),
    );
  }
}

