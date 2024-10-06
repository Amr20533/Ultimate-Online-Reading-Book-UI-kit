import 'package:flutter/material.dart';
import 'package:online_reading_book_app/utils/constants.dart';
import 'package:online_reading_book_app/layout/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Read Sphere',
      theme: ThemeData(
      textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
        primarySwatch: Colors.blue,
      ),
      home:const MainPage(),
    );
  }
}

