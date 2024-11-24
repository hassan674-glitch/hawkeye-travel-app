import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/appWidgets/textWidgets/heading_txt.dart';
import 'package:travel_app/appWidgets/textWidgets/light_text.dart';
import 'package:travel_app/appWidgets/page_view.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';

import '../appWidgets/page2_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: getProportionateScreenWidth(360),
          height: getProportionateScreenHeight(780),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(60), left: getProportionateScreenWidth(23)),
                width: getProportionateScreenWidth(140),
                height: getProportionateScreenHeight(20),
                child: lightText(
                  text: 'Find your next trip',
                  size: getProportionateScreenWidth(16),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(1),
              ),
              Container(
                margin: EdgeInsets.only(left: 23),
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(35),
                child: headingText(
                  text: 'Nordic scenery',
                  size: getProportionateScreenWidth(30),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(250),
                    height: getProportionateScreenHeight(60),
                    margin: EdgeInsets.only(left: getProportionateScreenWidth(23)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: const Icon(
                          CupertinoIcons.search,
                          color: AppColors.textFieldDarkText,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(getProportionateScreenHeight(30)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(15),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(getProportionateScreenWidth(8)),
                    onTap: () {

                    },
                    child: CircleAvatar(
                      radius: getProportionateScreenHeight(26),
                      backgroundColor: AppColors.primaryColor,
                      child: SvgPicture.asset(SvgAssets.search1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height:getProportionateScreenHeight(35),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(23)),
                width: getProportionateScreenWidth(200),
                height: getProportionateScreenHeight(30),
                child: headingText(
                  text: 'Popular Locations',
                  size: getProportionateScreenHeight(18),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              PageView1(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(23)),
                width: getProportionateScreenWidth(200),
                height: getProportionateScreenHeight(30),
                child: headingText(
                  text: 'Popular Locations',
                  size: getProportionateScreenHeight(18),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
               PageView2(),
            ],
          ),
        ),
      ),
    );
  }
}
