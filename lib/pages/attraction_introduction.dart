import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/appWidgets/button.dart';
import 'package:travel_app/appWidgets/review_icon.dart';
import 'package:travel_app/appWidgets/textWidgets/Popins_text.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/schedule_page.dart';

class AttractionIntroduction extends StatefulWidget {
   AttractionIntroduction({super.key});

  @override
  State<AttractionIntroduction> createState() => AttractionIntroductionState();
}

class AttractionIntroductionState extends State<AttractionIntroduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //       margin: EdgeInsets.only(left: getProportionateScreenWidth(24)),
      //       child: ButtonElevated(text: "Plan trip", size: getProportionateScreenHeight(16))),

      backgroundColor: AppColors.mainColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(getProportionateScreenHeight(20)),
              child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenHeight(29)),
                    topRight: Radius.circular(getProportionateScreenHeight(29)),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                    top: getProportionateScreenHeight(5),
                  ),
                  child: Text(
                    "About Bail",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                ),
              ),
            ),
            pinned: true,
            expandedHeight: getProportionateScreenHeight(300),
            elevation: 0,
            leading: Container(
              width: getProportionateScreenWidth(20),
              height: getProportionateScreenHeight(20),
              margin: EdgeInsets.only(left: getProportionateScreenHeight(5)),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back,color: AppColors.mainColor,),
                
              )
              // SvgPicture.asset(
              //   SvgAssets.backarrow,
              //   color: Colors.white,
              // ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                width: double.maxFinite,
                ImageAssets.beachref,
                fit: BoxFit.cover,
              ),
              title: Container(
                margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                child: Text(
                  "Nordic Cottage",
                  style: GoogleFonts.andika(
                    fontSize: getProportionateScreenWidth(30),
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(24),
                  ),
                  child: Text(
                    'Blue Lagoon Drive from Reykjavík, the capital of Iceland, to the southeast for about an hour you can reach Blue Lagoon, the famous',
                    style: GoogleFonts.poppins(
                      fontSize: getProportionateScreenWidth(16),
                      color: Color(0x69090808),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(33)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: getProportionateScreenWidth(24)),
                      child: StarRow(),
                    ),
                    SizedBox(width: getProportionateScreenWidth(3)),
                    Text(
                      "4.79 (78 reviews)",
                      style: GoogleFonts.poppins(
                        fontSize: getProportionateScreenHeight(14),
                        color: const Color(0x69090808),
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(60)),
                    Text(
                      "see reviews",
                      style: GoogleFonts.poppins(
                        fontSize: getProportionateScreenHeight(14),
                        color: const Color(0x69090808),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(42)),
                Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(24)),
                  child: Text(
                    "Pricing",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(23)),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(24),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2, // Adjust based on your actual data count
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: getProportionateScreenHeight(36),
                          child: SvgPicture.asset(index==0?SvgAssets.plane:SvgAssets.buildings),
                        ),
                        title: Text(
                          index==0?"Flights":"Hotels",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: PoppinsColorTxt(
                          text: index==0?'from 199\$':'from 199\$/night',
                          size: 14,
                          color: const Color(0x69090808),
                        ),
                        trailing: InkWell(
                            onTap: index==0?(){}:(){},
                            child: SvgPicture.asset(SvgAssets.forArr)),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.black, // Customize the divider color
                        thickness: 0.8, // Customize the divider thickness
                      );
                    },
                  ),
                ),
               SizedBox(height: getProportionateScreenHeight(31),),
                Container(
                    margin: EdgeInsets.only(left: getProportionateScreenWidth(24)),
                    child: GestureDetector(
                        onTap: (){
                          Get.to(const SchedulePage());
                        },
                        child: ButtonElevated(text: "Plan trip", size: getProportionateScreenHeight(16)))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




