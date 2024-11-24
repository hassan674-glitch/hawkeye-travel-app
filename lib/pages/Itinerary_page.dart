import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/appWidgets/custom_container.dart';
import 'package:travel_app/appWidgets/textWidgets/poppins_txt.dart';
import 'package:travel_app/appWidgets/timeline_widget.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/size.dart';

import '../config/assets.dart';

class ItenaryPage extends StatefulWidget {
  const ItenaryPage({super.key});

  @override
  State<ItenaryPage> createState() => _ItenaryPageState();
}

class _ItenaryPageState extends State<ItenaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: getProportionateScreenWidth(360),
          height: getProportionateScreenHeight(780),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(74),
                  left: getProportionateScreenWidth(34),
                  right: getProportionateScreenWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: SvgPicture.asset(SvgAssets.backarrow),
                      radius: getProportionateScreenHeight(28),
                      backgroundColor: AppColors.mainColor,
                    ),
                    InkWell(
                      borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(8)),
                      onTap: () {},
                      child: CircleAvatar(
                        radius: getProportionateScreenHeight(29),
                        backgroundColor: AppColors.primaryColor,
                        child: Image.asset(ImageAssets.person1),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(60),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                child: Text(
                  'Maldives Island',
                  style: GoogleFonts.poppins(
                    fontSize: getProportionateScreenHeight(20),
                    textStyle: const TextStyle(
                      color: AppColors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
              Expanded(flex: 2, child: CustomContainer()),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Center(
                child: Container(
                  width: getProportionateScreenWidth(45),
                  height: getProportionateScreenHeight(4),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(3)),
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                child: Text(
                  'Schedule',
                  style: GoogleFonts.poppins(
                    fontSize: getProportionateScreenHeight(20),
                    textStyle: const TextStyle(
                      color: AppColors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Expanded(flex: 3, child: TimelineScreen()),
            ],
          ),
        ),
      ),
    );
  }
}

