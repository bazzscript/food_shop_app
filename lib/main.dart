import 'package:flutter/material.dart';
import 'package:food_shop_app/constants/appcolors.dart';
import 'package:food_shop_app/views/home/food_details.dart';
import 'package:food_shop_app/views/home/food_list.dart';
import 'views/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: CardTheme(color: primaryColor),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: primaryColor,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
        ),
        bottomAppBarColor: primaryColor,
      ),
      routes: {
        FoodDetails.tag: (_) => FoodDetails(),
      },
      home: HomePage(),
    );
  }
}
