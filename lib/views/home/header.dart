import 'package:flutter/material.dart';
import 'package:food_shop_app/constants/appcolors.dart';
import 'package:food_shop_app/constants/currency.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(45),
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 2),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 20),
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white70,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/profile/pf.JPG'),
                              ),
                            ),
                            SizedBox(width: 5),
                            Column(
                              children: [
                                Text(
                                  'Bezaleel Nwabia',
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'GOLD Member',
                                    style: TextStyle(color: textColor),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              '$naira 1,918,000',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                bottom: 3,
                child: Container(
                  height: 50,
                  width: size.width,
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          labelText: "What do you want to eat ?",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.only(left: 20)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
