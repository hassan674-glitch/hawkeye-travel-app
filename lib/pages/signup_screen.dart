import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/login_regestration.dart';

class SignUpPage extends StatelessWidget {
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
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              'Sign up free',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              'Or continue with',
              style: GoogleFonts.poppins(
                color: AppColors.fadeTxtColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(4)),
                  child: CircleAvatar(
                    radius: getProportionateScreenHeight(5),
                    backgroundColor: AppColors.mainColor,
                    child: SvgPicture.asset(SvgAssets.msg),
                  ),
                ),
                hintText: 'Enter e-mail address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(27)),
            Text(
              'Or continue with',
              style: GoogleFonts.poppins(
                color: AppColors.fadeTxtColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(4)),
                  child: CircleAvatar(
                    radius: getProportionateScreenHeight(5),
                    backgroundColor: AppColors.mainColor,
                    child: SvgPicture.asset(SvgAssets.lock),
                  ),
                ),
                hintText: 'Create a password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(27)),
            Text(
              'Or continue with',
              style: GoogleFonts.poppins(
                color: AppColors.fadeTxtColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            TextField(
              decoration: InputDecoration(

                prefixIcon: Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(4)),
                  child: CircleAvatar(
                    radius: getProportionateScreenHeight(5),
                    backgroundColor: AppColors.mainColor,
                    child: SvgPicture.asset(SvgAssets.lock),
                  ),
                ),
                hintText: 'Repeat password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(27)),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                  child: CircleAvatar(
                    radius: getProportionateScreenHeight(10),
                    child: SvgPicture.asset(SvgAssets.threeDots,),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                Text(
                  'I have read the ',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    'Terms of Service',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(230),),
            Container(
              margin: EdgeInsets.only(bottom: getProportionateScreenHeight(17)),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const LoginReg());
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.primaryColor,
                  minimumSize: Size(double.infinity, getProportionateScreenHeight(50)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getProportionateScreenHeight(25)),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


