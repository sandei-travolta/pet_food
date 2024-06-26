import 'package:flutter/material.dart';
import 'package:pet_food/src/screens/cart_page.dart';
import 'package:pet_food/src/screens/favourites_page.dart';
import 'package:pet_food/src/screens/home_page.dart';
import 'package:pet_food/src/screens/message_page.dart';
import 'package:pet_food/src/screens/profile_page.dart';
import 'package:pet_food/utils/colors.dart';

import '../../utils/const.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    List pages=[
      HomePage(),
      CartPage(),
      FavouritesPage(),
      MessagesPage(),
      ProfilePage()
    ];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: pages[_currentPage],
          ),
          Positioned(
            bottom: 10,
              right: 5,
              left: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black.withOpacity(0.9)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.home_filled,size: navBarIconSize,color: primayColor

                              ,),
                          )),
                      Icon(Icons.shopping_basket_outlined,size: navBarIconSize,color: Colors.white,),
                      Icon(Icons.favorite_border,size: navBarIconSize,color: Colors.white,),
                      Icon(Icons.messenger_outline,size: navBarIconSize,color: Colors.white,),
                      Icon(Icons.person_2_outlined,size: navBarIconSize,color: Colors.white,)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
