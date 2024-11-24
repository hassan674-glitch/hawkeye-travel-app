import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/intro_page2.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        width: getProportionateScreenWidth(360),
        height: getProportionateScreenHeight(780),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: getProportionateScreenWidth(330),
                height: getProportionateScreenHeight(320),
                margin: EdgeInsets.only(top: getProportionateScreenHeight(100)),
                child: Image.asset(ImageAssets.img5),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text(
                textAlign: TextAlign.center,
               "Make your own private"
                 "      travel plan",style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 28,
               fontWeight: FontWeight.bold
             ),

           ),
              SizedBox(height: getProportionateScreenHeight(12),),
              Text(
                textAlign: TextAlign.center,
               'Formulate your strategy to receive '
                  'wonderful gift packs',style: GoogleFonts.poppins(
                  color: AppColors.fadeTxtColor,
                  fontSize: 18,
              ),
              ),
              SizedBox(height: getProportionateScreenHeight(60),),
              InkWell(
                onTap: (){
                  Get.to(IntroPage2(),transition:Transition.fadeIn);
                },
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