import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  static const tag = "food_details";
  FoodDetails({Key? key}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
