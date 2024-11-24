import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/appWidgets/button.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/transportatin_arrangement_page.dart';

class TravelArrangementPage extends StatefulWidget {
  const TravelArrangementPage({super.key});

  @override
  TravelArrangementPageState createState() => TravelArrangementPageState();
}

class TravelArrangementPageState extends State<TravelArrangementPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      
        appBar: AppBar(
          leading: Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(35)),
              child: const Icon(Icons.arrow_back,color: Colors.black,)),
          centerTitle: true,
          title: Container(
            height: getProportionateScreenHeight(40),
            margin: EdgeInsets.only(top: getProportionateScreenHeight(40)),
            child: Text('Add Itinerary',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(getProportionateScreenHeight(120)),
            child: TabBar(
              indicatorColor: AppColors.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              // controller: _tabController,
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Text('Day 1', style: GoogleFonts.poppins(
                          fontSize:20,
                          color: AppColors.black,
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
                          fontSize:20,
                          color: AppColors.black,
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
                          fontSize:20,
                          color: AppColors.black,
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
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                // controller: _tabController,
                children: [
                  Center(child: Text("First Page Content"),),
                  Container(
                    width: double.infinity,
                    height:getProportionateScreenHeight(55),
                    margin: EdgeInsets.only(top: getProportionateScreenHeight(30)),
                    child: Column(
                      children: [
                        _buildListTile("5:30", "Wake Up", ImageAssets.sun),
                        SizedBox(height:getProportionateScreenHeight(5),),
                        _buildListTile("7:30", " City Tour", ImageAssets.car),SizedBox(height: 5,),
                        _buildListTile("8:30", "Sailing Project", ImageAssets.boat),SizedBox(height: 5,),
                        _buildListTile("9:30", "SkyDiving", ImageAssets.parchute),
                        SizedBox(height: getProportionateScreenHeight(32),),
                        const ButtonElevated(text: "Add Activity", size: 16,color:Color(0xff0373F34D),),
                      ],
                    ),
                  ),
                  const Center(child: Text("Third Page Content"),),


                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
                child: InkWell(
                    onTap: (){
                      Get.to(const TravelPlanPage());
                    },
                    child:  const ButtonElevated(text: "Next Step", size: 16))),
          ],
        ),
      ),
    );
  }
}
Widget _buildListTile(String time,String content,String icon){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Container(
          width: getProportionateScreenWidth(90),
        height: getProportionateScreenHeight(40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(getProportionateScreenHeight(35))
        ),
          child: Center(
            child: Text(
              time,style: GoogleFonts.poppins(
              fontSize: 18,fontWeight: FontWeight.w600
            ),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(15),),
        Container(
          width: getProportionateScreenWidth(245),
          height: getProportionateScreenHeight(40),
          decoration: BoxDecoration(
              border: Border.all(
                width: getProportionateScreenWidth(1),
                  color: Colors.grey),
              borderRadius: BorderRadius.circular(getProportionateScreenHeight(35))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:EdgeInsets.only(left: getProportionateScreenWidth(20)),
                child: Text(
                  content,style: GoogleFonts.poppins(
                    fontSize: 16,fontWeight: FontWeight.w500
                ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(37),
                 height: getProportionateScreenHeight(37),
                 margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(icon)),
            ],
          ),
        ),
      ],
    ),
  );
}