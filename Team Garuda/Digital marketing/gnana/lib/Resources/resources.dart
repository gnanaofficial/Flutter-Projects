import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kblack = Color(0xFF292930);
const Color white = Color(0xFFFFFFFF);
const Color l1 = Color(0xFFE9F7FF);
const Color l2 = Color(0xFFFFDBD4);
const Color purple = Color(0xFF5956E8);
const Color text = Color(0xFF292930);

const kmaxwidth = 1232.0;
const kpadding = 20.0;
//fonts of the app

final nunexb = GoogleFonts.nunito(
  fontWeight: FontWeight.w800,
  color: text,
);
final kNunsebo = GoogleFonts.nunito(
  fontWeight: FontWeight.w600,
  color: text,
);
final kNunmed = GoogleFonts.nunito(
  fontWeight: FontWeight.w500,
  color: Colors.black,
);
final kNunreg = GoogleFonts.nunito(
  fontWeight: FontWeight.w400,
  color: text,
);
final kNotosans = GoogleFonts.notoSans(
  fontWeight: FontWeight.w400,
  color: text,
);

// sizes of app
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}

// changing color scheme from hex to color

// class Hexcolor{
//   static Color fromHex(String hexString){
//     final buffer = StringBuffer();
//     if (hexString.length <= 7 )buffer.write('ff');

//     buffer.write(hexString.replaceFirst('#',''));
//     return Color(int.parse(buffer.toString(),radix: 16));

//   }
// }

 

// font weights of the app

/*  Extra Light (Thin): 100
Light: 200
Regular (Normal): 400
Medium: 500
Semi-Bold (Demi-Bold): 600
Bold: 700
Extra Bold (Ultra-Bold): 800
Black (Heavy): 900  */