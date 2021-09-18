import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/login_page.dart';

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
        primarySwatch: Colors.deepPurple  
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),
      initialRoute: "/homepage",
      routes: {
        "/":(context) => login_page(),
        "/homepage":(context) => homepage(),
        "/login_page": (context) => login_page()
      },
    );
  }
} 