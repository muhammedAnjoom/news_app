import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kwhite = Color(0xffffffff);
const Color kLightWhite = Color(0xffeff5f4);
const Color kLighterWhite = Color(0xfffcfcfc);
const Color KGrey = Color(0xff9397a0);
const Color KLightGrey = Color(0xffa7a7a7);
const Color KBlue = Color(0xff5474fd);
const Color KLightBlue = Color(0xff83b1ff);
const Color KLighterBlue = Color(0xffc1d4f9);
const Color KDarkBlue = Color(0xff19202d);

const double kBorderRadius = 16;

final kHeight30 = SizedBox(height: 30,);

final kBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.circular(kBorderRadius)
);

final kPoppinsBold = GoogleFonts.poppins(
  color: KDarkBlue,
  fontWeight: FontWeight.w700,

);

final kPoppinsSemibold = GoogleFonts.poppins(
  color: KDarkBlue,
  fontWeight: FontWeight.w600,

);
final kPoppinsMedium = GoogleFonts.poppins(
  color: KDarkBlue,
  fontWeight: FontWeight.w500,

);
final kPoppinsRegular = GoogleFonts.poppins(
  color: KDarkBlue,
  fontWeight: FontWeight.w400,

);