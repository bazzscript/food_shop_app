import 'package:flutter/material.dart';
import 'package:food_shop_app/constants/appcolors.dart';
import 'package:food_shop_app/views/home/categories.dart';
import 'package:food_shop_app/views/home/food_list.dart';

import 'header.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            title: Text('Bazz Restuarant'),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
          Categories(),
          FoodList(row: 1),
          FoodList(row: 2),
          FoodList(row: 3),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black26,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.bookmark),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
