import 'package:banking/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Banking());



class Banking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    //full screen appearance
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    //change status bar color, with icon color.
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
      ),
    );

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: GoogleFonts.muli(),
          headline2: GoogleFonts.muli(),
          headline3: GoogleFonts.muli(),
          headline4: GoogleFonts.muli(),
          headline5: GoogleFonts.muli(),
          subtitle2: GoogleFonts.muli(),
          subtitle1: GoogleFonts.muli(),
          bodyText2: GoogleFonts.muli(),
          bodyText1: GoogleFonts.muli(),
          caption: GoogleFonts.muli(),
          button: GoogleFonts.muli(),
          headline6: GoogleFonts.muli(),
          overline: GoogleFonts.muli(),
        ) , 
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
      },
    );
  }
}