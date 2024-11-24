import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/appWidgets/button.dart';
import 'package:travel_app/appWidgets/review_icon.dart';
import 'package:travel_app/appWidgets/textWidgets/poppins_txt.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';

class TravelPlanPage extends StatelessWidget {
  const TravelPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){} ,
        ),
        title: Text(
          'Travel plan',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(getProportionateScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hotel',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            Container(
              height: getProportionateScreenHeight(92),
              width:getProportionateScreenWidth(350),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getProportionateScreenWidth(4)),
                image: const DecorationImage(image:AssetImage(
                  ImageAssets.mountaines2,
                ),
                ),
                ),
              child:Padding(
                padding:EdgeInsets.all(getProportionateScreenHeight(8)) ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin:EdgeInsets.only(top:getProportionateScreenHeight(25)),
                        child: PoppinsTxt(text: 'Nordic Cottage', size: 14,)),
                    SizedBox(height: getProportionateScreenHeight(10),),
                    StarRow(),
                  ],
                ),
              ),
              ),
            SizedBox(height: getProportionateScreenHeight(16)),
            Text(
              'Flights',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(14)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFlightCard('CHN', '21.03 6:00 AM',ImageAssets.china ),
                Icon(Icons.arrow_forward, color: Colors.black),
                _buildFlightCard('UK', '21.03 18:00 AM', ImageAssets.england),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(39)),
            Text(
              'Flights',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotel (5nigh)  ----------------------',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
               VerticalDivider(color: AppColors.black,),

                Text(
                  '\$886',
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(13),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Flights -------------------------------',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$726',
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(13),),
            // Divider(color: Colors.black12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total   -------------------------------',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$1612',
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
           const ButtonElevated(text: "Determine the plan", size: 16)
          ],
        ),
      ),
    );
  }

  Widget _buildFlightCard(String countryCode, String date, String flagAsset) {
    return Container(
      width: getProportionateScreenWidth(149),
      height: getProportionateScreenHeight(219),
      padding: EdgeInsets.all(getProportionateScreenHeight(8)),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(10)),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: getProportionateScreenHeight(20),
           backgroundImage: AssetImage(
              flagAsset,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          Text(
            countryCode,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          Text(
            date,
            style: GoogleFonts.poppins(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
          SizedBox(height:getProportionateScreenHeight(21)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(SvgAssets.firstClass),
              Text(
                'First Class',
                style: GoogleFonts.poppins(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
