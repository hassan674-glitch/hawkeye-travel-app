import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/config/appcolors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';

import '../appWidgets/textWidgets/Popins_text.dart';

class PersonalCenterPage extends StatefulWidget {
  const PersonalCenterPage({super.key});

  @override
  _PersonalCenterPageState createState() => _PersonalCenterPageState();
}

class _PersonalCenterPageState extends State<PersonalCenterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(30)),
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PoppinsColorTxt(text: 'Alan Love',
                    size: 26, color: AppColors.black,
                    fontWeight: FontWeight.bold,),
                  Container(
                    margin: EdgeInsets.only(left: getProportionateScreenWidth(120)),
                    child:  CircleAvatar(
                      radius: getProportionateScreenHeight(25),
                      backgroundImage: const AssetImage(ImageAssets.person1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(59),),
              PoppinsColorTxt(text: 'E-mail Address', size:14, color: AppColors.fadeTxtColor,

              ),SizedBox(height: getProportionateScreenHeight(2),),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: getProportionateScreenWidth(5)),
                    child: CircleAvatar(
                      radius: getProportionateScreenHeight(3),
                      backgroundColor: AppColors.mainColor,
                      child: SvgPicture.asset(SvgAssets.msg,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(getProportionateScreenHeight(30))
                  ),
                ),
                initialValue: 'alanlovelq@gmail.com',
                readOnly: true,
              ),
              SizedBox(height: getProportionateScreenHeight(27),),
              PoppinsColorTxt(text: 'Password', size:14, color: AppColors.fadeTxtColor,

              ),SizedBox(height: getProportionateScreenHeight(2),),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Container(
                    width: getProportionateScreenWidth(80),
                    height: getProportionateScreenHeight(36),
                    margin: EdgeInsets.only(right: getProportionateScreenWidth(5)),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child:Center(child: PoppinsColorTxt(text:"Change" , size: 16, color: AppColors.mainColor,)) ,
                  ),
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(getProportionateScreenHeight(30))
                  ),
                 prefixIcon: Container(
                   margin: EdgeInsets.only(left: getProportionateScreenWidth(5)),
                   child: CircleAvatar(
                       backgroundColor: AppColors.mainColor,
                       radius: getProportionateScreenHeight(3),
                       child: SvgPicture.asset(SvgAssets.lock)),
                 )
                ),
                initialValue: '*****',
                obscureText: true,
                readOnly: true,
              ),
              SizedBox(height: getProportionateScreenHeight(27),),
              Container(
                child: PoppinsColorTxt(text: 'Authenticate', size:14, color: AppColors.fadeTxtColor,

                ),
              ),
              SizedBox(height: getProportionateScreenHeight(2),),
              TextFormField(
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getProportionateScreenHeight(30))
                  ),
                  prefixIcon:Container(margin: EdgeInsets.only(left: getProportionateScreenWidth(5)),
                    child: CircleAvatar(
                        radius: getProportionateScreenHeight(3),
                        backgroundColor: AppColors.mainColor,
                        child: SvgPicture.asset(SvgAssets.person)),
                  ),
                ),
                initialValue: 'Travel blogger',
                readOnly: true,
              ),

            ],
          ),
        ),
      ),
    );
  }
}