import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';
class login_page extends StatefulWidget {
  const login_page({ Key? key }) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png"
             , fit: BoxFit.cover,) ,
             SizedBox(
               height: 20.0,
             ),
             Text(
               "Welcome $name" ,
               style: TextStyle(
                 fontSize: 28,
                 fontWeight: FontWeight.bold
               ),),
              SizedBox(
               height: 20.0,
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
               child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                       hintText: "Enter username",
                       labelText: "Username"
                     ),
                     onChanged: (value){
                       name = value;
                       setState(() {
                         
                       });
                     }
                   ),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Enter password",
                       labelText: "Password"
                     ),
                   ),
                  SizedBox(
                       height: 40.0,
                  ),
                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton?50 : 100,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton? Icon(
                        Icons.done,
                        color:  Colors.white,
                      ) : Text(
                        "Login",
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold ,
                          fontSize: 15
                          ),

                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton ? 40 : 6) 
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   }
                  // )
      
                 ],
               ),
             )
          ],  
        ),
      )
    );
  }
}