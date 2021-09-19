import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light ,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple  ,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),

      routes: {
        "/":(context) => login_page(),
        "/homepage":(context) => homepage(),
        "/login_page": (context) => login_page()
      },
    );
  }
} 