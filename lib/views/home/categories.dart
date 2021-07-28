import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                height: 90,
                width: 90,
                margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentSelectedCategory = index;
                    });
                  },
                  child: Card(
                    color: index == currentSelectedCategory
                        ? Colors.black.withOpacity(0.7)
                        : Colors.white,
                    child: Icon(
                      Icons.fastfood,
                      color: index == currentSelectedCategory
                          ? Colors.white
                          : Colors.black.withOpacity(0.7),
                    ),
                    elevation: 3,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.9,
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 90,
                  child: Row(
                    children: [
                      Spacer(),
                      Text('TabaEgo'),
                      Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
