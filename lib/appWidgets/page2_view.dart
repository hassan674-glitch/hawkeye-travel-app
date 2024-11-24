import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/appWidgets/textWidgets/andikatxt.dart';
import 'package:travel_app/appWidgets/textWidgets/poppins_txt.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import '../pages/pageview_nxt.dart';


class PageView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(210),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {

              Get.to(() => NextPageView(index: index));
            },
            child: Container(
              width: getProportionateScreenWidth(150), // Width of each item
              margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)), // Space between items
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    index == 0
                        ? ImageAssets.img3 // Replace with your actual image assets
                        : index == 1
                        ? ImageAssets.beach
                        : ImageAssets.mountaines,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: getProportionateScreenWidth(10),top: getProportionateScreenHeight(60),right: getProportionateScreenWidth(4)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        andikaText(
                          text: index == 0
                              ? 'Western Strait'
                              : index == 1
                              ? 'Beach House'
                              : 'Mountain range',
                          size: getProportionateScreenHeight(22),
                        ),
                        SizedBox(height: getProportionateScreenHeight(4),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PoppinsTxt(
                                text: index == 0
                                    ? "16 locations"
                                    : index == 1
                                    ? "22 locations"
                                    : "15 locations",
                                size: getProportionateScreenHeight(18)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
