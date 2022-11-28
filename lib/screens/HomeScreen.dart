import 'package:flutter/material.dart';
import 'package:xplorify_app/screens/ProductConstructor.dart';
import 'package:xplorify_app/screens/ProductTile.dart';
import 'package:xplorify_app/screens/productDetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex =0;
  bool isfav = false;

  var productDetails = [Product(
    name: "apple",
    image: 'https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: "Rs 453",
    disprice: "Rs 594",
    id: 1,
    isfav: true,
  ),
  Product(
    name: "orange",
    image: 'https://images.pexels.com/photos/2090902/pexels-photo-2090902.jpeg?auto=compress&cs=tinysrgb&w=600',
    price: "Rs 234",
    disprice: "Rs 394",
    id: 2,
    isfav: true,
  ),
    Product(
        name: "grapes",
        image: 'https://images.pexels.com/photos/1114797/pexels-photo-1114797.jpeg?auto=compress&cs=tinysrgb&w=600',
        price: "Rs 300",
        disprice: "Rs 394",
        id: 3,
        isfav: true,
    ),
    Product(
        name: "melon",
        image: 'https://images.pexels.com/photos/7657264/pexels-photo-7657264.jpeg?auto=compress&cs=tinysrgb&w=400',
        price: "Rs 250",
        disprice: "Rs 394",
        id: 4,
        isfav: true,
    ),
    Product(
        name: "banana",
        image: 'https://images.pexels.com/photos/61127/pexels-photo-61127.jpeg?auto=compress&cs=tinysrgb&w=400',
        price: "80",
        disprice: "Rs 99",
        id: 5,
        isfav: true,
    ),
    Product(
        name: "guava",
        image: 'https://images.pexels.com/photos/4105727/pexels-photo-4105727.jpeg?auto=compress&cs=tinysrgb&w=400',
        price: "240",
        disprice: "Rs 299",
        id: 6,
        isfav: true,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: GridView.builder(
            itemCount: productDetails.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                  childAspectRatio: 3/4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
              ),

              itemBuilder: (context, int index){
              // return InkWell(
              //   onTap: (){
              //   },
              //   child: Container(
              //     margin: EdgeInsets.all(8),
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Colors.black,width: 0.8),
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(15)),
              //   ),
              // );
                return ProductTile(
                    image: productDetails[index].image,
                    name:  productDetails[index].name,
                    descPrice: productDetails[index].disprice,
                    isfav: productDetails[index].isfav,
                   price: productDetails[index].price,


                ); }

      ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],
        elevation: 3,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex:  _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        iconSize: 30,
      ),
    );
  }
}
