import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorSelect {
  Color appBarColor = const Color.fromARGB(255, 170, 205, 255);
  Color color1 = const Color.fromARGB(255, 252, 248, 229);
  Color color2 = const Color.fromARGB(255, 225, 218, 203);
  Color color3 = const Color.fromARGB(255, 116, 114, 105);
  Color color4 = const Color.fromARGB(255, 90, 88, 79);
  Color primaryColor = Color.fromARGB(255, 10, 74, 164);
  Color onPrimary = Color.fromARGB(255, 5, 5, 6);
  Color secondaryColor = const Color.fromRGBO(73, 73, 73, 1);
  Color colorBackGround = const Color.fromARGB(255, 216, 232, 255);
  Color buttonColor = const Color(0xff52a392);
}
final myTextTheme = TextTheme(
  headline1: GoogleFonts.josefinSans(
    fontSize: 123,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5
  ),
  headline2: GoogleFonts.josefinSans(
    fontSize: 77,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5
  ),
  headline3: GoogleFonts.josefinSans(
    fontSize: 61,
    fontWeight: FontWeight.w400
  ),
  headline4: GoogleFonts.josefinSans(
    fontSize: 43,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25
  ),
  headline5: GoogleFonts.josefinSans(
    fontSize: 31,
    fontWeight: FontWeight.w400
  ),
  headline6: GoogleFonts.josefinSans(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  subtitle1: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.nunitoSans(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.nunitoSans(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.nunitoSans(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.white),
    caption: GoogleFonts.nunitoSans(
        fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.nunitoSans(
        fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5));