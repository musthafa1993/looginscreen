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
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
            ],
          ),
        ),
      )
    );
  }

  Container buildContainer() {
    return Container(
            margin: EdgeInsets.all(8),
          height: 60,
            width: double.infinity,
            color: Colors.cyanAccent,
          );
  }
}

