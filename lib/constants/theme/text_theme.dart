import 'package:expenditure_app/constants/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTextTheme {
  static Widget xSmall(String text, BuildContext context,
      {TextAlign? textAlign, FontWeight? fontWeight, Color? color}) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.quicksand(
        textStyle: TextStyle(
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: 12,
            color: color ?? AppColor.black),
      ),
    );
  }

  static Widget small(String text, BuildContext context,
      {TextAlign? textAlign, FontWeight? fontWeight, Color? color}) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.quicksand(
        textStyle: TextStyle(
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: 15,
            color: color ?? AppColor.indigo900),
      ),
    );
  }

  static Widget medium(String text, BuildContext context,
      {TextAlign? textAlign, FontWeight? fontWeight, Color? color}) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.quicksand(
        textStyle: TextStyle(
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: 20,
            color: color ?? AppColor.black),
      ),
    );
  }

  static Widget large(String text, BuildContext context,
      {TextAlign? textAlign, FontWeight? fontWeight, Color? color}) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.quicksand(
        textStyle: TextStyle(
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: 32,
            color: color ?? AppColor.indigo900),
      ),
    );
  }

  static Widget kanit(String text, BuildContext context,
      {TextAlign? textAlign, FontWeight? fontWeight, double? size}) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.kanit(
        textStyle: TextStyle(
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: size,
            color: AppColor.white,
            letterSpacing: 1,
            shadows: [
              Shadow(color: Colors.indigo.shade900, blurRadius: 7),
              Shadow(
                  color: Colors.indigo.shade600,
                  blurRadius: 25,
                  offset: const Offset(3, 3))
            ]),
      ),
    );
  }
}
