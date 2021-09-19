import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';
import 'package:flutter_catalog/utils/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context), 
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => login_page(),
        MyRoutes.homeRoute:(context) => homepage(),
        MyRoutes.loginRoute: (context) => login_page()
      },
    );
  }
} 