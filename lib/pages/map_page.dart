import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/appWidgets/review_icon.dart';
import 'package:travel_app/appWidgets/textWidgets/andikatxt.dart';
import 'package:travel_app/appWidgets/textWidgets/light_text.dart';
import 'package:travel_app/config/assets.dart';

import '../appWidgets/textWidgets/heading_txt.dart';
import '../config/AppColors.dart';
import '../config/size.dart';
// Update this import to your actual assets file

class MapPage extends StatefulWidget {
  const MapPage({super.key});
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng _initialPosition = const LatLng(33.8555, 73.7667);
  final List<Marker> _markers = [
    const Marker(
      markerId: MarkerId('marker1'),
      position: LatLng(33.8560, 73.7670),
      infoWindow: InfoWindow(title: 'Location 1'),
    ),
    const Marker(
      markerId: MarkerId('marker2'),
      position: LatLng(33.8570, 73.7680),
      infoWindow: InfoWindow(title: 'Location 2'),
    ),
    const Marker(
      markerId: MarkerId('marker3'),
      position: LatLng(33.8580, 73.7690),
      infoWindow: InfoWindow(title: 'Location 3'),
    ),
    const Marker(
      markerId: MarkerId('marker4'),
      position: LatLng(33.8590, 73.7700), // Example coordinates
      infoWindow: InfoWindow(title: 'Location 4'),
    ),
    const Marker(
      markerId: MarkerId('marker5'),
      position: LatLng(33.8600, 73.7710), // Example coordinates
      infoWindow: InfoWindow(title: 'Location 5'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 10.0,
            ),
            markers: Set.from(_markers),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
          ),
          Positioned(
            top: getProportionateScreenHeight(65),
            left:getProportionateScreenWidth(5),

            child: Column(
              children: [

                Container(
                  height: getProportionateScreenHeight(46.0),
                  decoration: const BoxDecoration(

                  ),
                  child:   Row(
                    children: [
                      InkWell(
                        onTap:(){
                          Get.back();
                        },
                        child: CircleAvatar(
                            radius: 30,
                          backgroundColor: Colors.white70,
                            child: SvgPicture.asset(SvgAssets.backarrow,),
                        ),
                      ),
                      Container(
                        width: getProportionateScreenWidth(230),
                        height: getProportionateScreenHeight(60),
                        margin: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                        child: TextField(
                          style: const TextStyle(
                            color: AppColors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: "Search",
                            // prefixIcon: SvgPicture.asset(SvgAssets.search,
                            //     colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                            // ),
                            prefixIcon: const Icon(CupertinoIcons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(getProportionateScreenHeight(30)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(getProportionateScreenWidth(8)),
                        onTap: () {},
                        child: CircleAvatar(
                          radius: getProportionateScreenHeight(26),
                          backgroundColor: AppColors.primaryColor,
                          child: SvgPicture.asset(SvgAssets.search1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: getProportionateScreenHeight(50.0),
            left: getProportionateScreenWidth(15.0),
            right: getProportionateScreenWidth(15.0),
            child: Column(
              children: [
                Container(

                  width: getProportionateScreenWidth(300),
                  margin: EdgeInsets.only(bottom: getProportionateScreenHeight(10),right: getProportionateScreenWidth(20)),

                  child: headingText(
                    text: 'Location targeting',
                    size:24,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(200),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildLocationCard(index);
                    },

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationCard(int index) {
    return Padding(
     padding:  EdgeInsets.all(getProportionateScreenWidth(10)),
      child: Container(
        width: getProportionateScreenWidth(265.0),
        height: getProportionateScreenHeight(160),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
          width: getProportionateScreenWidth(100),
            height: getProportionateScreenHeight(175),
            margin: EdgeInsets.only(
                top: getProportionateScreenWidth(10),
                left: getProportionateScreenWidth(20),
            bottom: getProportionateScreenWidth(10)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
              image: DecorationImage(
                image: AssetImage(index==1?ImageAssets.img4:ImageAssets.beachref), // Update this with your actual image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: getProportionateScreenHeight(20),),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Sunset Evening\n Avenue",style: GoogleFonts.andika(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                  )
                ),
                SizedBox(height: getProportionateScreenHeight(10),),
                Container(
                    margin: EdgeInsets.only(right:getProportionateScreenWidth(20),left: getProportionateScreenWidth(10)),
                    child: StarRow()),
                SizedBox(height:getProportionateScreenHeight(7),),
                Container(

                    child: lightText(text: "from", size: getProportionateScreenWidth(13))),
                SizedBox(height: getProportionateScreenHeight(10),),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(15),
                          right: getProportionateScreenWidth(20)),
                      child: headingText(text: "\$ 299 /night",size: 13,),
                    ),
                    CircleAvatar(
                      radius: getProportionateScreenHeight(15),
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(CupertinoIcons.heart,
                        size: 20,
                        color: AppColors.red,),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
