import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme {
  AppTheme(this.context);

  BuildContext context;

  ThemeData initTheme() {
    return ThemeData(
      primarySwatch: Colors.yellow,
      primaryColor: AppColor.kPrimary,
      buttonColor: AppColor.kPrimary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            Size(double.infinity, 56),
          ),
          foregroundColor: MaterialStateProperty.all(
            AppColor.kTextBlack,
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColor.kPrimary,
          ),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColor.kTextBlack,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            AppColor.kTextBlack,
          ),
          minimumSize: MaterialStateProperty.all(
            Size(0, 56),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColor.kTextBlack,
            ),
          ),
        ),
      ),
      textTheme: GoogleFonts.ptSansTextTheme(
        TextTheme().copyWith(
          headline1: TextStyle(
            fontSize: 32,
            color: AppColor.kTextBlack,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 32,
            color: AppColor.kTextBlack,
          ),
          headline3: TextStyle(
            fontSize: 24,
            color: AppColor.kTextBlack,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 24,
            color: AppColor.kTextBlack,
          ),
          headline5: TextStyle(
            fontSize: 20,
            color: AppColor.kTextBlack,
          ),
          headline6: TextStyle(
            fontSize: 16,
            color: AppColor.kTextBlack,
          ),
          bodyText1: TextStyle(
            fontSize: 12,
            color: AppColor.kTextBlack,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            color: AppColor.kTextBlack,
          ),
        ),
      ),
    );
  }
}
