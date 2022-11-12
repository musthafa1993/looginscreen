
import 'package:flutter/material.dart';
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
          // Spacer(),
         const Text("Login",style: TextStyle(color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),
          ),
        const Text("Please Login To Continue",
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w600
        ),),
        Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 17,
          child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 8),
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
              border: InputBorder.none,
              hintText: "email"),),
        ),
        Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 17,
          child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 8),
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
              border: InputBorder.none,
              hintText: "email"),),
        ),
      ],
    ),
        )),);
  }
}
