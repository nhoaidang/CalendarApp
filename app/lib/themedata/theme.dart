import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Themes{


}
TextStyle get headingStyle{
  return GoogleFonts.robotoCondensed(
    textStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
  );
}
  TextStyle get subHeadingStyle{
  return GoogleFonts.robotoCondensed(
    textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromARGB(255, 107, 105, 105)
    )
  );
  }

TextStyle get textCusttom{
  return GoogleFonts.dancingScript(
    textStyle: TextStyle(
      fontSize: 20,
      
    )
  );
}
TextStyle get WellComeLogin{
  return GoogleFonts.oswald(
    textStyle: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    )
  );
}
TextStyle get TextLogin{
  return GoogleFonts.oswald(
    textStyle: TextStyle(
      fontSize: 20,
      
      color: Colors.black,
    )
  );
}
TextStyle get textMenu{
  return GoogleFonts.oswald(
    textStyle: TextStyle(
      fontSize: 20,
      
      color: Colors.white,
    )
  );
}
TextStyle get TextLogin2{
  return GoogleFonts.oswald(
    textStyle: TextStyle(
      fontSize: 15,
   
      color: Colors.black,
    )
  );
}
TextStyle get TxtLogin{
  return GoogleFonts.oswald(
    textStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    )
  );
}
TextStyle get TextLabel{
  return GoogleFonts.oswald(
    textStyle: TextStyle(
      
      color: Colors.black,
    )
  );
}
