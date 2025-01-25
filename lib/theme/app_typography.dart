import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTypography {
//header
  static TextStyle h1([Color color = AppColors.mainText]) {
    return GoogleFonts.inter(
        fontSize: 22, height: 1.45, fontWeight: FontWeight.bold, color: color);
  }

  static TextStyle h2([Color color = AppColors.mainText]) {
    return GoogleFonts.inter(
        fontSize: 17, height: 1.58, fontWeight: FontWeight.bold, color: color);
  }

  static TextStyle h3([Color color = AppColors.mainText]) {
    return GoogleFonts.inter(
      fontSize: 15,
      height: 1.6,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

// Body
  static TextStyle p1([Color color = AppColors.mainText]) {
    return GoogleFonts.inter(
      fontSize: 17,
      height: 1.58,
      fontWeight: FontWeight.w400, // Medium
      color: color,
    );
  }

  static TextStyle p2([Color color = AppColors.mainText]) {
    return GoogleFonts.inter(
      fontSize: 15,
      height: 1.6,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle s([Color color = AppColors.mainText]) {
    return GoogleFonts.inter(
      fontSize: 12,
      height: 1.6,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }
}