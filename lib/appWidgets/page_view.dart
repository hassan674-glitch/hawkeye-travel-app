import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travel_app/appWidgets/textWidgets/andikatxt.dart';
import 'package:travel_app/appWidgets/textWidgets/poppins_txt.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/pageview_nxt.dart';

class PageView1 extends StatefulWidget {
  const PageView1({super.key});

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  var _currentPage = 0.0;
  int currentImageIndex=0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(145),
      width:double.infinity,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){

            },
            child: Container(
              width: getProportionateScreenWidth(200),
              height:getProportionateScreenHeight(145),
              margin: EdgeInsets.only(right: index == 2 ? 0 : 25),
              padding: EdgeInsets.only(left: 0.5), // Adjust padding to your needs
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    index == 0 ? ImageAssets.img1 : index == 2 ? ImageAssets.img2 : ImageAssets.img3,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        andikaText(
                          text: index == 0
                              ? 'Switzerland'
                              : index == 1
                              ? 'Ilulissat Icefjord'
                              : 'Other Location', // Adjust the text based on your needs
                          size: 22,
                        ),
                        SizedBox(height: getProportionateScreenHeight(4),),
                        Row(
                          children: [
                            PoppinsTxt(text: index==0?"from \$699"
                                :"from \$726",
                                size:16 ),
                            SizedBox(
                              width:getProportionateScreenWidth(120),
                            ),
                            PoppinsTxt(text: "4.9",
                                size:16 ),
                            SizedBox(width: getProportionateScreenWidth(2),),
                            SvgPicture.asset(
                            SvgAssets.star,
                            ),
                          ],
                        )
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
