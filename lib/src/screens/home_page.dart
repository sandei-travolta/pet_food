import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_food/utils/colors.dart';

import 'widgets/homepage_sections.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 5,
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: primayColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Location",style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal
                              )),
                              Row(
                                children: [
                                  Icon(Icons.location_on_rounded,color: Colors.brown,),
                                  Text("Nyeri",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                  ),)
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: Center(
                              child: Icon(Icons.notifications,size: 30,color: Colors.white,),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex:8,
                              child: Container(
                            height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.search,size: 25,),
                                        const SizedBox(width: 2,),
                                        Text("Search",style: TextStyle(
                                          fontSize: 20
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                          )),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Icon(Icons.filter_list,size: 25,color: primayColor,),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                      ),
            )),
        Expanded(
            flex: 15,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OffersSection(),
                    CategorySection(),
                    BestSellersSection()
                  ],
                ),
              ),
            )
            ),
      ],
    );
  }

}

