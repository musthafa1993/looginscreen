import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: ListView.builder(

         itemCount: 25,
           itemBuilder: (context,int index){
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListTile(
             tileColor: Colors.green,
             leading: Icon(Icons.account_circle,
             color: Colors.white,),
             title: Text("Name $index" ,
               style: TextStyle(

                 fontSize: 15,
                   fontWeight: FontWeight.w500,
                   color: Colors.white),),
             trailing: Icon(Icons.phone,color: Colors.white,),
           ),
         );
       }),
      )
    );
  }

  Container buildContainer(int index) {
    return Container(
      child: Center(child: Text("$index"),),
            margin: EdgeInsets.all(8),
          height: 60,
            width: double.infinity,
            color: Colors.cyanAccent,
          );
  }
}

