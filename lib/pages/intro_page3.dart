import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/login_regestration.dart';
import 'package:travel_app/pages/mainpage.dart';
import 'package:travel_app/pages/myhomepage.dart';
import 'package:travel_app/pages/signup_screen.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        width: getProportionateScreenWidth(360),
        height: getProportionateScreenHeight(780),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: getProportionateScreenWidth(330),
                height: getProportionateScreenHeight(320),
                margin: EdgeInsets.only(top: getProportionateScreenHeight(100)),
                child: Image.asset(ImageAssets.intro3),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text(
                textAlign: TextAlign.center,
                "High-end leisure projects to choose from"
                , style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),

              ),
              SizedBox(height: getProportionateScreenHeight(12),),
              Text(
                textAlign: TextAlign.center,
                "The world's first-class modern leisure and entertainment method"
                , style: GoogleFonts.poppins(
                color: AppColors.fadeTxtColor,
                fontSize: 18,
              ),
              ),
              SizedBox(height: getProportionateScreenHeight(60),),
              InkWell(
                onTap: (){
                  Get.to( SignUpPage(),
                  transition:Transition.fadeIn
                  );

                }
                ,
                child: Container(
                  width: getProportionateScreenWidth(76),
                  height: getProportionateScreenHeight(76),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: SvgPicture.asset(SvgAssets.forwardarrow,
                        width: getProportionateScreenWidth(40),
                        height: getProportionateScreenHeight(40),
                        color: AppColors.mainColor,)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
