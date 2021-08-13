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
        fontSize: 14, color: CustomColors.color422d28, letterSpacing: 1));

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

// Advanced
