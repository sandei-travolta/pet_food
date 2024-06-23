import 'package:flutter/material.dart';
import 'package:pet_food/src/screens/cart_page.dart';
import 'package:pet_food/src/screens/favourites_page.dart';
import 'package:pet_food/src/screens/home_page.dart';
import 'package:pet_food/src/screens/message_page.dart';
import 'package:pet_food/src/screens/profile_page.dart';

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
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home_filled,size: navBarIconSize,),
                      Icon(Icons.shopping_basket_outlined,size: navBarIconSize,),
                      Icon(Icons.favorite_border,size: navBarIconSize,),
                      Icon(Icons.messenger_outline,size: navBarIconSize,),
                      Icon(Icons.person_2_outlined,size: navBarIconSize,)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
