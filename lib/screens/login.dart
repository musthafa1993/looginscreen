
import 'package:flutter/material.dart';
import 'package:xplorify_app/screens/Home.dart';
import './login.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Spacer(flex: 2,),
         const Text("LOGIN",style: TextStyle(color: Colors.black,
          fontSize: 44,
          fontWeight: FontWeight.bold),
          ),
        const Text("Please Login To Continue",
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w600
        ),),
        buildSizedBox(20),
        Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 17,
          child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 8),
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
              border: InputBorder.none,
              hintText: "email"),),
        ),
        buildSizedBox(20),
        Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 17,
          child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 8),
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
              border: InputBorder.none,
              hintText: "password"),),
        ),
        buildSizedBox(40),
        InkWell(
          onTap: (){
            print("hello");
            Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.orange,
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 22),)),
            ),
          ),
        ),
        Spacer(flex: 1,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("dont have an Account?\t",
        style: TextStyle(fontWeight: FontWeight.w500,
                fontSize: 26,color: Colors.grey),),
            Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w500,
            fontSize: 26,color: Colors.blue),),
          ],
        )
      ],
    ),
        )),);
  }

  SizedBox buildSizedBox(double hght) {
    return SizedBox(
      height: hght,
      );
  }
}
