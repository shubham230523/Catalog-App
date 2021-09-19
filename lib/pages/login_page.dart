import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class login_page extends StatelessWidget {
  const login_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png"
           , fit: BoxFit.cover,) ,
           SizedBox(
             height: 20.0,
           ),
           Text(
             "Welcome" ,
             style: TextStyle(
               fontSize: 24,
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
                 ),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "Enter password",
                     labelText: "Password"
                   ),
                 ),
                SizedBox(
                     height: 20.0,
                ),
                ElevatedButton(
                  child: Text("LOgin"),
                  style: TextButton.styleFrom(),
                  onPressed: (){
                    print("Hello login button pressed");
                  }
                )

               ],
             ),
           )
        ],  
      )
    );
  }
}