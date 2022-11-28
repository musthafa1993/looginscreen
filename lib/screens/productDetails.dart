import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final name;
  final price;
  final image;

  const ProductDetails({Key? key, this.name, this.price, this.image}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                child: Image.network(widget.image),
              ),
              Row(children: [
                Text(widget.price,
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900)),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
