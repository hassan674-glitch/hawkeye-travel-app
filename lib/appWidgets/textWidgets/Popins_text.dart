import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/AppColors.dart';


class PoppinsColorTxt extends StatelessWidget {
  final String text;
  final double  size;
  final Color color;
  final FontWeight? fontWeight;
  PoppinsColorTxt ({super.key, required this.text,required this.size, required this.color, this.fontWeight,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize:size,
        color: color,
        // fontWeight: FontWeight.bold,
        textStyle:TextStyle(
          fontWeight: FontWeight.normal??fontWeight,
            decoration: TextDecoration.none
        ),
      ),
    );
  }
}