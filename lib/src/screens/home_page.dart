import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_food/src/screens/widgets/home_page_texts.dart';
import 'package:pet_food/utils/colors.dart';
import 'package:pet_food/utils/const.dart';
import 'package:pet_food/utils/specials_banner_images.dart';
import 'package:pet_food/src/models/icon.dart'as CustomIcon;
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
            flex: 6,
            child: Container(
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
                  ))
                ],
              ),
            )),
        Expanded(
            flex: 4,
            child: Container(
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
            )),
        Expanded(
            flex: 5,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        subHeadersText("Best Seller Products"),
                        navigationText()
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }

}
