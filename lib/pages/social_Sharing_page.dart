import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';

class SocialSharingPage extends StatelessWidget {
  const SocialSharingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(71),),
            const Icon(Icons.arrow_back,color: Colors.black,),
            SizedBox(height: getProportionateScreenHeight(21)),
            Row(
              children:  [
                SvgPicture.asset(SvgAssets.threeP),
                SizedBox(width: getProportionateScreenWidth(10)),
                Text(
                  'Your social links',
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
             SizedBox(height: getProportionateScreenHeight(9)),
            const Text(
              'Here you can post your travel blog and promote your travel videos',
              style: TextStyle(fontSize: 16),
            ),
           SizedBox(height: getProportionateScreenHeight(24)),
            const SocialLinkCard(
              icon: SvgAssets.pinterest,
              title: 'Facebook',
              description: 'Limited time paid promotion',
            ),
             SizedBox(height: getProportionateScreenHeight(16)),
            const SocialLinkCard(
              icon:  SvgAssets.twitter,
              title: 'Twitter',
              description: 'Limited time paid promotion',
            ),
             SizedBox(height: getProportionateScreenHeight(16)),
            const SocialLinkCard(
              icon: SvgAssets.instagram,
              title: 'Instagram',
              description: 'Promote your blog for free',
            ),
             SizedBox(height: getProportionateScreenHeight(16)),
            const SocialLinkCard(
              icon: SvgAssets.pinterest,
              title: 'Pinterest',
              description: 'Promote your blog for free',
            ),
            SizedBox(height: getProportionateScreenHeight(100)),
             TextButton.icon(

               onPressed: () {  },
               label:Text('Add to see if your social links are correct',
                 style: GoogleFonts.poppins(
                     color: Colors.black,
                     fontSize: 16),
               ) ,
            ),
          ],
        ),
      ),
    );
  }
}

class SocialLinkCard extends StatelessWidget {
  const SocialLinkCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon),
           SizedBox(width: getProportionateScreenWidth(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: getProportionateScreenHeight(4)),
              Text(
                description,
                style:  TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}