import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/appWidgets/review_icon.dart';
import 'package:travel_app/appWidgets/textWidgets/andikatxt.dart';
import 'package:travel_app/appWidgets/textWidgets/poppins_txt.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'Itinerary_page.dart';
import 'map_page.dart';

class NextPageView extends StatefulWidget {
  final int index;
  final List<String> images = [ImageAssets.img3, ImageAssets.beach, ImageAssets.mountaines];

  NextPageView({super.key, required this.index});

  @override
  State<NextPageView> createState() => _NextPageViewState();
}

class _NextPageViewState extends State<NextPageView> {
  @override
  Widget build(BuildContext context) {
    String title;
    String description;

    switch (widget.index) {
      case 0:
        title = 'Western Strait';
        description = 'Details about Western Strait...';
        break;
      case 1:
        title = 'Beach House';
        description = 'Details about Beach House...';
        break;
      case 2:
        title = 'Mountain Range';
        description = 'Details about Mountain Range...';
        break;
      default:
        title = 'Unknown';
        description = 'Unknown details...';
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.images[widget.index]),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: getProportionateScreenWidth(300), top: getProportionateScreenHeight(30)),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(CupertinoIcons.arrow_left, color: Colors.white70),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(450)),
              andikaText(text: title, size: getProportionateScreenHeight(45)),
              SizedBox(height: getProportionateScreenHeight(4)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PoppinsTxt(
                    text: description,
                    size: getProportionateScreenWidth(16),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      StarRow(),
                      const SizedBox(width: 5),
                      PoppinsTxt(
                        text: "4.79(78 reviews)",
                        size: getProportionateScreenWidth(16),
                      ),
                      SizedBox(width: getProportionateScreenWidth(70)),
                      PoppinsTxt(
                        text: "see reviews",
                        size: getProportionateScreenWidth(14),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        onPressed: () {
                          Get.to(ItenaryPage());
                        },
                        child: Text(
                          "Enter the plan",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            textStyle: const TextStyle(
                              color: AppColors.mainColor,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(26)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.mainColor,
                          ),
                        ),
                        onPressed: () {
                          Get.to(MapPage());
                        },
                        child: Text(
                          "   View Map   ",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            textStyle: const TextStyle(
                              color: AppColors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
