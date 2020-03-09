import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

CupertinoThemeData kDarkTheme = CupertinoThemeData.raw(
  Brightness.dark,
  Colors.black,
  Colors.grey[200],
  CupertinoTextThemeData(
    textStyle: GoogleFonts.sourceCodePro(
      textStyle: TextStyle(
        fontSize: 55,
        color: Colors.blueGrey,
      ),
    ),
  ),
  Colors.black,
  Colors.black,
);

CupertinoThemeData kLightTheme = CupertinoThemeData.raw(
  Brightness.light,
  Colors.white,
  Colors.grey[200],
  CupertinoTextThemeData(
    textStyle: GoogleFonts.sourceCodePro(
      textStyle: TextStyle(
        fontSize: 55,
        color: Colors.blueGrey,
      ),
    ),
  ),
  Colors.white,
  Colors.white,
);

Color kShiningGreen = Color(0xFF25D366);
