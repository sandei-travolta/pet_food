import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_food/utils/colors.dart';

import '../../utils/specials_banner_images.dart';
class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.09,
        decoration: BoxDecoration(
          color: Color(0xFFF2F8FC),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            Expanded(
                flex: 4,
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total Price",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                  Text("400 Ksh",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.black,),)
                ],
              ),
            )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: primayColor,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.white,),
                          const SizedBox(width: 5,),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                              ),
                ))
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.grey.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height*0.5,
                    child: Column(
                      children: [
                        Expanded(flex: 3,child: Container(
                          padding: EdgeInsets.all(35),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(bannerImage1,fit: BoxFit.fill,)),
                        )),
                        Expanded(flex:1,child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 20),
                          child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                width: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(bannerImage1,fit: BoxFit.fill,),
                                  ),
                                ),
                              ),
                            );
                          }),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Positioned(child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          descIcons(Icons.arrow_back),
                          Row(
                            children: [
                            descIcons(Icons.favorite_border_rounded),
                            const SizedBox(width: 5,),
                              descIcons(Icons.share)
                          ],)
                        ],
                      )))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dog Food",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey
                    ),),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text("4.9")
                      ],
                    )
                  ],
                ),
              ),
              Text("NutriNosh Dog Dry Food",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),),
              const SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(8),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Seller",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("John Doe",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  Text("Manager",style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                  ),)
                                ]
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            userSectionIcons(Icons.messenger_outline),
                            const SizedBox(width: 10,),
                            userSectionIcons(Icons.phone),
                          ],
                        )
                      ],
                    ),
                    Text("Select Sizes"),
                    ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return Container(

                          );
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container userSectionIcons(IconData icon) {
    return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF4F1F8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(icon,color: primayColor,),
                            ),
                          );
  }

  Container descIcons(IconData icon) {
    return Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                            child: Center(child: Icon(icon)));
  }
}
