import 'package:flutter/material.dart';
import 'package:travel_app/appWidgets/textWidgets/poppins_txt.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
          width: getProportionateScreenWidth(350),
          height: getProportionateScreenHeight(200),
          padding: EdgeInsets.only(left: getProportionateScreenWidth(24)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(ImageAssets.beachref),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: getProportionateScreenHeight(10),
                  left: getProportionateScreenWidth(1),
                  // right: getProportionateScreenWidth(60),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on,color: AppColors.fadeTxtColor,),
                      Container(
                        // margin: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                          child: PoppinsTxt(text: "Beach Reef", size: getProportionateScreenHeight(10)),
                      ),

                    ],
                  ) ),
              Positioned(
                top: getProportionateScreenHeight(10),
                right: getProportionateScreenWidth(10),
                child:
                    _buildProfileImage(ImageAssets.image3),
              ),
              Positioned(
                top: getProportionateScreenHeight(10),
                right: getProportionateScreenWidth(23),
                child:
                _buildProfileImage(ImageAssets.image2),
              ),
              Positioned(
                top: getProportionateScreenHeight(10),
                right: getProportionateScreenWidth(38),
                child:
                _buildProfileImage(ImageAssets.image1),
              ),


              Positioned(
                bottom: getProportionateScreenHeight(15),
                left: getProportionateScreenWidth(230),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: getProportionateScreenHeight(39),

                    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8),
                        vertical: getProportionateScreenHeight(4)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColor,
                    ),
                    child:  Center(
                      child: PoppinsTxt(text: 'Maldives'
                        , size: getProportionateScreenHeight(16),

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );


  }

  Widget _buildProfileImage(String imagePath) {
    return Container(
      margin: EdgeInsets.only(left:getProportionateScreenWidth(8)),
      width: getProportionateScreenWidth(30),
      height: getProportionateScreenHeight(30),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


