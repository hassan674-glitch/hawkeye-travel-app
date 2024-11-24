import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/mainpage.dart';

class LoginReg extends StatelessWidget {
  const LoginReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              'Sign in',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            TextField(
              decoration: InputDecoration(
                prefixIcon:Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(4)),
                  child: CircleAvatar(
                      radius: getProportionateScreenHeight(5),
                      backgroundColor: AppColors.mainColor,
                      child: SvgPicture.asset(SvgAssets.msg)),
                ),
                hintText: 'Enter e-mail address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
             Row(
              children: [
                const Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
                  child:  Text('Or continue with',style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),),
                ),
                const Expanded(child: Divider(thickness: 1)),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(
                SvgAssets.apple, // Add your Apple logo SVG here
                width: getProportionateScreenWidth(24),
                height: getProportionateScreenHeight(24),
              ),
              label: Text('Continue with Apple',style: GoogleFonts.poppins(
                fontSize: 16,
              ),),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, getProportionateScreenHeight(50)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getProportionateScreenHeight(25)),
                ),
              ),
            ),
            SizedBox(height:getProportionateScreenHeight(25)),
            ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(
                SvgAssets.facebook1, // Add your Facebook logo SVG here
                width:getProportionateScreenHeight(24),
                height: getProportionateScreenHeight(24),
              ),
              label: Text('Continue with Facebook',style: GoogleFonts.poppins(
                fontSize: 16,
              ),),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color(0xFF3B5998),
                minimumSize: Size(double.infinity, getProportionateScreenHeight(50)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getProportionateScreenHeight(25)),
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(17)),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const MainPage());
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.primaryColor,
                  minimumSize: Size(double.infinity, getProportionateScreenHeight(50)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getProportionateScreenHeight(25)),
                  ),
                ),
                child: Text('Continue',style: GoogleFonts.poppins(
                  fontSize: 16,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

