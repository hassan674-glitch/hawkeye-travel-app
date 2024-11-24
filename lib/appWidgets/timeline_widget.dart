import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../config/AppColors.dart';
import '../config/assets.dart';
import '../config/size.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.3,
            isFirst: true,
            indicatorStyle: IndicatorStyle(
              width: getProportionateScreenWidth(26),
              color: AppColors.primaryColor,
              iconStyle: IconStyle(
                iconData: Icons.location_on,
                color: AppColors.white,
              ),
              padding: EdgeInsets.only(left: getProportionateScreenWidth(40)),
            ),
            beforeLineStyle: LineStyle(
              color: AppColors.primaryColor,
              thickness: 2,
            ),
            endChild: _buildTimelineTileContent(
              'Maldives',
              'Save the Turtles',
              ImageAssets.moonCloud,
            ),
            startChild: Container(
              margin: EdgeInsets.only(left: getProportionateScreenWidth(30)),
              width: getProportionateScreenWidth(60),
              child: Text(
                "10:00 AM",
                style: GoogleFonts.poppins(
                  fontSize: getProportionateScreenWidth(16),
                  color: AppColors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.3,
            indicatorStyle: IndicatorStyle(
              width: getProportionateScreenWidth(26),
              color: AppColors.fainterGreyColor,
              padding: EdgeInsets.only(left: getProportionateScreenWidth(40)),
            ),
            beforeLineStyle: const LineStyle(
              color: AppColors.fainterGreyColor,
              thickness: 2,
            ),
            afterLineStyle: const LineStyle(
              color: AppColors.fainterGreyColor,
              thickness: 2,
            ),
            endChild: _buildTimelineTileContent(
              'Golden beach',
              'Surfing on the sea',
              ImageAssets.cloud4,
            ),
            startChild: Container(
              margin: EdgeInsets.only(left: getProportionateScreenWidth(30)),
              width: getProportionateScreenWidth(60),
              child: Text(
                "12:00 PM",
                style: GoogleFonts.poppins(
                  fontSize: getProportionateScreenWidth(16),
                  color: AppColors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.3,
            isLast: true,
            indicatorStyle: IndicatorStyle(
              width: getProportionateScreenWidth(26),
              color: AppColors.fainterGreyColor,
              padding: EdgeInsets.only(left: getProportionateScreenWidth(40)),
            ),
            beforeLineStyle: const LineStyle(
              color: AppColors.fainterGreyColor,
              thickness: 2,
            ),
            endChild: _buildTimelineTileContent(
              'Coconut grove',
              'BBQ party by the sea',
             ImageAssets.cloud2
            ),
            startChild: Container(
              margin: EdgeInsets.only(left: getProportionateScreenWidth(30)),
              width: getProportionateScreenWidth(60),
              child: Text(
                "02:00 PM",
                style: GoogleFonts.poppins(
                  fontSize: getProportionateScreenWidth(16),
                  color: AppColors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineTileContent(String title, String subtitle, String icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(16),
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: getProportionateScreenWidth(40),
            height: getProportionateScreenHeight(40),
            decoration: const BoxDecoration(
              color: AppColors.mainColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              icon,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeText(String time) {
    return Container(
      margin: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: Text(
        time,
        style: GoogleFonts.poppins(
          fontSize: getProportionateScreenWidth(16),
          color: AppColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
