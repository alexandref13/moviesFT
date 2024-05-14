import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyleEnum {
  body,
  bodyMedium,
  bodyLarge,
  headline,
  headlineMedium,
  headlineLarge,
  title,
  titleMedium,
  titleLarge,
  subtitle,
  subtitleMedium,
  subtitleBold,
}

TextStyle customTextStyle(CustomTextStyleEnum textStyleEnum) {
  var textStyle = const TextStyle();

  switch (textStyleEnum) {
    case CustomTextStyleEnum.body:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          letterSpacing: .4,
        ),
      );
      break;
    case CustomTextStyleEnum.bodyMedium:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          letterSpacing: .4,
        ),
      );
      break;
    case CustomTextStyleEnum.bodyLarge:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          letterSpacing: .4,
        ),
      );
      break;
    case CustomTextStyleEnum.headline:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: .0,
        ),
      );
      break;
    case CustomTextStyleEnum.headlineMedium:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: .0,
        ),
      );
      break;
    case CustomTextStyleEnum.headlineLarge:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          letterSpacing: .0,
        ),
      );
      break;
    case CustomTextStyleEnum.title:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: .1,
        ),
      );
      break;
    case CustomTextStyleEnum.titleMedium:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: .15,
        ),
      );
      break;
    case CustomTextStyleEnum.titleLarge:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.normal,
          letterSpacing: .0,
        ),
      );
      break;
    case CustomTextStyleEnum.subtitle:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: .01,
        ),
      );
      break;
    case CustomTextStyleEnum.subtitleMedium:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: .05,
        ),
      );
      break;
    case CustomTextStyleEnum.subtitleBold:
      textStyle = GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: .05,
        ),
      );
      break;
    default:
      textStyle = GoogleFonts.poppins();
      break;
  }

  return textStyle;
}
