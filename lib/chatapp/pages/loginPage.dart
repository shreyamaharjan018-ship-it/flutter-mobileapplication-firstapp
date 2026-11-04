import 'package:flutter/material.dart';
import 'package:newflutterproject/pages/dashboard.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
        children: [
          Stack(
            children: [
              Container(
                  height:size.height/1.1,
                  width: size.width,
                  child: Image.network(
                      fit :BoxFit.cover,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX4dDAOr55XsXpZjTyI9kU817kGmPs_jvhH3BS-2UtPA&s=10")),
              Positioned(
                bottom:-10,
                child: Container(
                  width:size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Comie",style:TextStyle(
                          color:Colors.black,
                          fontSize:80,
                          fontWeight:FontWeight.bold

                      ),),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: size.width/1.15,
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius:BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Email:",style:TextStyle()),

                Container(
                  width: size.width/1.8,
                  child: TextField(
                   style: TextStyle(
                     color: Colors.black,
                     fontSize:12
                   ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hint:Text("abc@gmail.com")
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: size.width/1.15,
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius:BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Password:",style:TextStyle()),

                Container(
                  width: size.width/1.8,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:12
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hint:Text("123456")
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder:(context) => dashboard(),
                  ),
                );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: size.width/2.2,
              color: Colors.green[800],
              padding: EdgeInsets.only(top:9,
              bottom:8,left:15,right:15),
              child:Center(child:Text(
                "Login".toUpperCase(),style:TextStyle(
                fontSize: 18,
                fontWeight:FontWeight.bold
              )
              )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forget Password?",
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Register",
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Register here",
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),

            ]
          ),

      )
      );

  }
}
