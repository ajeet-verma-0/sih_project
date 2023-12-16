import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TTextTheme{
  TTextTheme._();
  static TextTheme lightTextTheme=TextTheme(
      displayLarge: GoogleFonts.montserrat(
        fontSize:28.0,fontWeight:FontWeight.bold, color: Colors.black87,
      ),
    displayMedium: GoogleFonts.montserrat(
      fontSize:24.0,fontWeight:FontWeight.w700, color: Colors.black87,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize:24.0,fontWeight:FontWeight.w700, color: Colors.black87,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize:16.0,fontWeight:FontWeight.w600, color: Colors.black87,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize:14.0,fontWeight:FontWeight.normal, color: Colors.black87,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize:14.0,fontWeight:FontWeight.normal, color: Colors.black87,
    ),

  );
  static TextTheme darkTextTheme=TextTheme(

    displayLarge: GoogleFonts.montserrat(
      fontSize:28.0,fontWeight:FontWeight.bold, color: Colors. white70,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize:24.0,fontWeight:FontWeight.w700, color: Colors. white70,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize:24.0,fontWeight:FontWeight.w700, color: Colors. white70,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize:16.0,fontWeight:FontWeight.w600, color: Colors. white70,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize:14.0,fontWeight:FontWeight.normal, color: Colors. white70,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize:14.0,fontWeight:FontWeight.normal, color: Colors. white70,
    ),
  );
}
