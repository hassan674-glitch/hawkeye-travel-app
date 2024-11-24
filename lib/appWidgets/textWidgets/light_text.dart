import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';


class lightText extends StatelessWidget {
  final String text;
  final double  size;
  lightText({super.key, required this.text,required this.size,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize:size,
        textStyle:const TextStyle(
          color: AppColors.fadeTxtColor,
        ),
      ),
    );
  }
}
