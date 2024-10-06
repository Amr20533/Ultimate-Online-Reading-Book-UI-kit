import 'package:flutter/material.dart';
import 'package:online_reading_book_app/layout/home_screen.dart';
import 'package:online_reading_book_app/widgets/home/round_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Bitmap.png'),fit: BoxFit.fill
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(text:TextSpan(style:Theme.of(context).textTheme.titleMedium,
                children: const [
                  TextSpan(text: 'Read'),
                  TextSpan(text: 'Sphere.',style: TextStyle(fontWeight: FontWeight.bold)),
                ])),
            SizedBox(width:MediaQuery.of(context).size.width * 0.6,
                child: RoundButton(
                  press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));},
                  text: "Start Reading",)),

          ],),
      ),
    );
  }
}
