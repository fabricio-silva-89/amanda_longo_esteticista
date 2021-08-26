import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'web_colors.dart';

class WebTextStyles {
  static final titleHome = GoogleFonts.libreBaskerville(
    fontSize: 52,
    fontWeight: FontWeight.w600,
    color: WebColors.secondary,
  );

  static final titleAbout = GoogleFonts.libreBaskerville(
    fontSize: 52,
    fontWeight: FontWeight.w600,
    color: WebColors.secondary,
  );

  static final bodyAbout = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: WebColors.secondary,
  );

  static final header = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: WebColors.white,
  );
}
