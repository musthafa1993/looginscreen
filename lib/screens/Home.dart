import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
//home page
class _HomeState extends State<Home> {
  var names=["anu","achu","raju","peli","raman","anathu","parvathi"];
  var mobile_number = ["9845345687","9543543454","90495859595","94485857474","94875938847","0498509584039","94049303940"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contacts"),
        actions: [Icon(Icons.search)],
      ),
      body: SafeArea(
       child: ListView.builder(
         itemCount: names.length,
           itemBuilder: (context,int index){
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListTile(
             tileColor: Colors.green,
             leading: Icon(Icons.account_circle,
             color: Colors.white,),
             title: Text(
             "${names[index]}",
               
               style: TextStyle(
                 fontSize: 15,
                   fontWeight: FontWeight.w500,
                   color: Colors.white),),
             subtitle: Text("${mobile_number[index]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),),
             trailing:  Icon(
               Icons.phone,color: Colors.white,),
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

