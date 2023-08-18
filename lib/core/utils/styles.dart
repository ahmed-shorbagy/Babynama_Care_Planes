import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static var textStyle16 = GoogleFonts.b612(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static var textStyle20 = GoogleFonts.cormorant(
    fontSize: 25,
    fontWeight: FontWeight.w800,
  );

  static var textStyle30 = GoogleFonts.cabin(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
}
