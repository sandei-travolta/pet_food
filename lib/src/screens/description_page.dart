import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/specials_banner_images.dart';
class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            ],
          ),
        ),
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
