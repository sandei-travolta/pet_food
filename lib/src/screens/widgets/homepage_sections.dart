import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_food/src/screens/description_page.dart';

import '../../../utils/colors.dart';
import 'home_page_texts.dart';
import 'package:pet_food/utils/const.dart';
import 'package:pet_food/utils/specials_banner_images.dart';
import 'package:pet_food/src/models/icon.dart'as CustomIcon;

class BestSellersSection extends StatelessWidget {
  const BestSellersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subHeadersText("Best Seller Products"),
                  navigationText()
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1
            ),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>DescriptionPage())),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                flex:3,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.asset("resources/images/bannerImage1.jpg",fit: BoxFit.fill,)),
                                  ),
                            )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                              color: Colors.white.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Dog Food",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700
                                          ),),
                                          Row(
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,),
                                              Text("4.9",style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600
                                              ),),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.location_on,color: Colors.brown,size: 15,),
                                              Text("Nyeri",style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700
                                              ),),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("400",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                              Text(" Ksh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                subHeadersText("Categories"),
                navigationText()
              ],
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesIconList.length,
                      itemBuilder: (context,index){
                        CustomIcon.Icons customIcon=categoriesIconList[index];
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.4)
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SvgPicture.asset(customIcon.img,color: primayColor,),
                                  ),
                                ),
                              ),
                              Text(customIcon.name,style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600
                              ),)
                            ],
                          ),
                        );
                      }),
                ),
              ))
        ],
      ),
    );
  }
}

class OffersSection extends StatelessWidget {
  const OffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                subHeadersText("Special Offers"),
                navigationText()
              ],
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Offer on Accessories",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),),
                            const SizedBox(height: 10,),
                            Text("Get Special Offer",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            const SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Up to",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal
                                ),),
                                const SizedBox(width: 5,),
                                Text("20%",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              decoration: BoxDecoration(
                                color: primayColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text("Order Now",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,color: Colors.white),),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(12),
                              topRight: Radius.circular(12)
                          ),
                          image: DecorationImage(image: AssetImage(bannerImage1),fit: BoxFit.fill)
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
