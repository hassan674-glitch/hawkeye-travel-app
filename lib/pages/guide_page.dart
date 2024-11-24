import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:travel_app/appWidgets/button.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';

import 'attraction_introduction.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {

  final List<String> _tabs = ["Island", "Beach", "Resort"];
  final List<bool> _selectedCircles = [true, false, false];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          title: Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
             child:    Center(
                  child: Text(
                    "Itinerary Form",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                    ),
                  ),
                ),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(12),
                  right: getProportionateScreenWidth(14)),
              child: SvgPicture.asset(
                SvgAssets.barcode
              ),
            )
          ],
          backgroundColor: AppColors.mainColor,
          bottom: PreferredSize(
            preferredSize:Size.fromHeight(getProportionateScreenHeight(170)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(_tabs.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          for (int i = 0; i < _selectedCircles.length; i++) {
                            _selectedCircles[i] = i == index;
                          }
                        });
                      },
                      child: Container(
                        width: getProportionateScreenWidth(104),
                        height: getProportionateScreenHeight(34),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: _selectedCircles[index] ? AppColors.primaryColor : AppColors.mainColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.fainterGreyColor),
                        ),
                        child: Center(
                          child: Text(
                            _tabs[index],
                            style: GoogleFonts.poppins(
                              color: _selectedCircles[index] ? AppColors.mainColor : AppColors.fainterGreyColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: getProportionateScreenHeight(34),),
                TabBar(
                  indicatorColor: AppColors.primaryColor,
                  indicatorSize:TabBarIndicatorSize.tab ,
                  labelColor: AppColors.black,
                  tabs: [
                    Tab(
                      child: Column(
                        children: [
                          Text('Day 1', style: GoogleFonts.poppins(
                              fontSize:18,
                              fontWeight: FontWeight.bold)),
                          Text('July 14', style: GoogleFonts.poppins(
                              fontSize:16,
                              color: Colors.grey,
                              )),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Text('Day 2', style: GoogleFonts.poppins(
                              fontSize:18,
                              fontWeight: FontWeight.bold)),
                          Text('July 15', style: GoogleFonts.poppins(
                            fontSize:16,
                            color: Colors.grey,
                          )),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Text('Day 3', style: GoogleFonts.poppins(
                              fontSize:18,
                              fontWeight: FontWeight.bold)),
                          Text('July 16', style: GoogleFonts.poppins(
                            fontSize:16,
                            color: Colors.grey,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body:   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TabBarView(
                  children: [

                    const Center(child: Text('Content for Day 1')),
                    Container(
                      color: AppColors.white,
                      child: Column(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin:EdgeInsets.only(
                                        top: getProportionateScreenHeight(30),
                                        left: getProportionateScreenWidth(40)),
                                    child: Column(
                                      children: [
                                        TimelineTile(
                                          alignment: TimelineAlign.manual,
                                          lineXY: 0.21,
                                          isFirst: true,
                                          indicatorStyle: IndicatorStyle(
                                            color: AppColors.primaryColor,
                                            width: getProportionateScreenWidth(26),
                                          iconStyle: IconStyle(
                                            iconData: Icons.location_on,
                                            color: Colors.white
                                          )
                                          ),
                                          startChild: Text(
                                              "12:30",style: GoogleFonts.poppins(
                                            fontSize: 24,
                                          ),
                                          ),
                                          beforeLineStyle:const LineStyle(
                                            color: AppColors.primaryColor,
                                            thickness: 1
                                          ),
                                          endChild: _buildTimelineTileContent("Maldives Island", "Save the Turtles",ImageAssets.moonCloud ),
                                        ),
                                        TimelineTile(
                                          alignment: TimelineAlign.manual,
                                          lineXY: 0.21,
                                          indicatorStyle: IndicatorStyle(
                                            color: Colors.white,
                                              indicator: Container(
                                                width: getProportionateScreenWidth(22),
                                                height: getProportionateScreenHeight(22),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                  border:Border.all(
                                                    color: Colors.grey                                              ),
                                                ),
                                              ),
                                              width: getProportionateScreenWidth(26),
                                          ),
                                          startChild: Text(
                                            "14:30",style: GoogleFonts.poppins(
                                            fontSize: 24,
                                          ),
                                          ),
                                          beforeLineStyle:const LineStyle(
                                              thickness: 1
                                          ),
                                          endChild: Container(
                                              constraints: BoxConstraints(
                                                minHeight: getProportionateScreenHeight(100), // Adjust this to increase the height of the tile
                                              ),
                                              child: Container(
                                                  margin:EdgeInsets.only(top: getProportionateScreenHeight(30)),
                                                  child: _buildTimelineTileContent("Golden Beach", "Surfing on the sea",ImageAssets.cloud4 ))),
                                        ),
                                        TimelineTile(
                                          alignment: TimelineAlign.manual,
                                          lineXY: 0.21,
                                          indicatorStyle: IndicatorStyle(
                                            color: Colors.white,
                                            indicator: Container(
                                              width: getProportionateScreenWidth(22),
                                              height: getProportionateScreenHeight(22),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border:Border.all(
                                                    color: Colors.grey                                              ),
                                              ),
                                            ),
                                            width: getProportionateScreenWidth(26),
                                          ),
                                          startChild: Text(
                                            "17:30",style: GoogleFonts.poppins(
                                            fontSize: 24,
                                          ),
                                          ),
                                          beforeLineStyle:const LineStyle(
                                              thickness: 1
                                          ),
                                          endChild: Container(
                                              constraints: BoxConstraints(
                                                minHeight: getProportionateScreenHeight(100), // Adjust this to increase the height of the tile
                                              ),
                                              child: Container(
                                                  margin:EdgeInsets.only(top: getProportionateScreenHeight(30)),
                                                  child: _buildTimelineTileContent("Coconut grove", "BBQ party by the sea",ImageAssets.cloud3 ))),
                                        ),
                                        TimelineTile(
                                          alignment: TimelineAlign.manual,
                                          lineXY: 0.21,
                                          isLast: true,
                                          indicatorStyle: IndicatorStyle(
                                            color: Colors.white,
                                            indicator: Container(
                                              width: getProportionateScreenWidth(22),
                                              height: getProportionateScreenHeight(22),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border:Border.all(
                                                    color: Colors.grey                                              ),
                                              ),
                                            ),
                                            width: getProportionateScreenWidth(26),
                                          ),
                                          startChild: Text(
                                            "21:30",style: GoogleFonts.poppins(
                                            fontSize: 24,
                                          ),
                                          ),
                                          beforeLineStyle:const LineStyle(
                                              thickness: 1
                                          ),
                                          endChild: Container(
                                              constraints: BoxConstraints(
                                                minHeight: getProportionateScreenHeight(100)
                                              ),
                                              child: Container(
                                                  margin:EdgeInsets.only(top: getProportionateScreenHeight(30)),
                                                  child: _buildTimelineTileContent("Maldives Islands", "Sea blowing",ImageAssets.cloud4 ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                           InkWell(
                               onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return AttractionIntroduction();
                            }));
                                 print("Successfull");
                               },
                               child:  ButtonElevated(text: "View specific itinerary", size: 16)),
                            ],
                          )




                    ),
                    const Center(child: Text('Content for Day 3')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(8),
          width: getProportionateScreenWidth(60),
          height: getProportionateScreenHeight(60),
          decoration: BoxDecoration(
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