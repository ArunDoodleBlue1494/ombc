import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ombc/common/custom_colors.dart';

// Simple
TextStyle headlineTextStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 26,
        color: CustomColors.primaryColor,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w300));

TextStyle headlineSecondaryTextStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 20,
        color: CustomColors.primaryColor,
        fontWeight: FontWeight.w300));

TextStyle subtitleTextStyle = GoogleFonts.openSans(
    textStyle: TextStyle(
        fontSize: 14, color: CustomColors.secondaryColor, letterSpacing: 1));

TextStyle bodyTextStyle = GoogleFonts.openSans(
    textStyle: TextStyle(fontSize: 14, color: CustomColors.primaryColor));

TextStyle buttonTextStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 13,
        color: CustomColors.primaryColor,
        fontWeight: FontWeight.w500));

TextStyle menuButtonTextStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 10, color: CustomColors.primaryColor, letterSpacing: 1));

TextStyle footerTextStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 10, color: Colors.white));

TextStyle textStyle30 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 32,
        color: CustomColors.primaryColor,
        fontWeight: FontWeight.w700,
        wordSpacing: 1.2));

TextStyle textStyleNormal26 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 26, color: CustomColors.primaryColor, wordSpacing: 1.2));

TextStyle textStyle14 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 14,
        color: CustomColors.darkGreyTextColor,
        letterSpacing: 1.5,
        height: 1.5));

TextStyle textStyle10 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 10,
        color: CustomColors.darkGreyTextColor.withOpacity(0.8),
        letterSpacing: 1.5,
        height: 1.5));

TextStyle textStyleMediumGray16 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 16,
        color: CustomColors.darkGreyTextColor,
        fontWeight: FontWeight.w400));

TextStyle textStyleRegularGray14 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 14, color: CustomColors.darkGreyTextColor.withOpacity(0.7)));

TextStyle textStyleWhite32 = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 32, color: Colors.white));
// Advanced
