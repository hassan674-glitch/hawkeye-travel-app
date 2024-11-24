import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/personal_center_page.dart';


class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(87)),
              child: Text(
                'Your partner',
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(26)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  buildProfileRow(
                    context,
                    ImageAssets.person7, // Replace with actual image path
                    'Alan love',
                    'Travel Blogger',
                    isEditable: true,
                  ),
                  Divider(color: Colors.grey[300]),
                  buildProfileRow(
                    context,
                    ImageAssets.person8, // Replace with actual image path
                    'Charlotte',
                    'Chief Travel Experiencer',
                    // isEditable: true
                  ),
                  Divider(color: Colors.grey[300]),
                  buildProfileRow(
                    context,
                    ImageAssets.person9, // Replace with actual image path
                    'Evangeline',
                    'Chief Travel Experiencer',
                  ),
                  Divider(color: Colors.grey[300]),
                  buildProfileRow(
                    context,
                    ImageAssets.person10, // Replace with actual image path
                    'Geraldine',
                    'Private tour guide',
                  ),
                  Divider(color: Colors.grey[300]),
                  buildProfileRow(
                    context,
                    ImageAssets.person11, // Replace with actual image path
                    'Prudence',
                    'Travel youtube master',
                  ),
                    Divider(color: Colors.grey[300]),
                ],
                ),
              ),
            ),

           Container(
             padding: EdgeInsets.only(top: getProportionateScreenHeight(15)),
             child: TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(SvgAssets.exit),
                  label: Text(
                    'Log out',
                    style: GoogleFonts.poppins(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ),
           ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileRow(BuildContext context, String imagePath, String name, String role, {bool isEditable = false}) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(6.0)),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: getProportionateScreenWidth(25),
      ),
      title: Text(
        name,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        role,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      trailing: isEditable==true
          ? ElevatedButton(
                    onPressed: () {
                      Get.to(const PersonalCenterPage());
                      },
                    style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16), vertical: getProportionateScreenHeight(8)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.5),
            ),),
              child: Text(
            'Edit profile',
            style: GoogleFonts.poppins(
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
                    ),
                  )
          : const Icon(Icons.arrow_forward, color: Colors.grey),
      onTap: () {
      },
    );
  }
}
