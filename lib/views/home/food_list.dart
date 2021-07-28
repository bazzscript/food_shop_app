import 'package:flutter/material.dart';
import 'package:food_shop_app/constants/appcolors.dart';
import 'package:food_shop_app/constants/currency.dart';
import 'package:food_shop_app/views/home/food_details.dart';

class FoodList extends StatefulWidget {
  final int row;
  FoodList({Key? key, this.row = 1}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  int items = 10;
  Widget egusiImage = Container(
    child: Image(
      height: 135,
      image: AssetImage('assets/foods/egusi.png'),
    ),
  );
  Widget abachaImage = Container(
      child: Image(
    height: 135,
    image: AssetImage('assets/foods/abacha.png'),
  ));
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 3 ? 330 : 245,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 245,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == items ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      //NAVIGATOR
                      Navigator.of(context).pushNamed(FoodDetails.tag);
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? 'Egusi & Semo' : 'African Salad',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            // Food Image
                            reverse ? egusiImage : abachaImage,
                            Spacer(),
                            Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(),
                                Text(
                                  '$naira 3,450',
                                  style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
