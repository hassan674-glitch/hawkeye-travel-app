import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class headingText extends StatelessWidget {
  final String text;
  final double  size;
  headingText({super.key, required this.text,required this.size,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize:size,
        fontWeight:FontWeight.bold,
      ),
    );
  }
}