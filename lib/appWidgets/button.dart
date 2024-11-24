import 'package:flutter/cupertino.dart';
import 'package:travel_app/appWidgets/textWidgets/Popins_text.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/size.dart';

class ButtonElevated extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  const ButtonElevated({super.key, required this.text, required this.size,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(340),
      height: getProportionateScreenHeight(54),
      decoration: BoxDecoration(
        color: AppColors.primaryColor??color,
        borderRadius: BorderRadius.circular(36),
      ),
      child:Center(child: PoppinsColorTxt(text:text , size: size, color: AppColors.mainColor,)) ,
    );
  }
}
