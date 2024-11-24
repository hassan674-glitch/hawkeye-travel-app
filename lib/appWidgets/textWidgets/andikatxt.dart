import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';


class andikaText extends StatelessWidget {
  final String text;
  final double  size;
  andikaText({super.key, required this.text,required this.size,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.andika(
        fontSize:size,
        textStyle:const TextStyle(
          color: AppColors.andikaFontTxt,
          decoration: TextDecoration.none
        ),
      ),
    );
  }
}
