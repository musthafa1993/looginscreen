import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xplorify_app/screens/productDetails.dart';

class ProductTile extends StatefulWidget {
  final name;
  final price;
  final image;
  final descPrice;
  final isfav;

  const ProductTile({Key? key, this.name, this.price, this.image, this.descPrice, this.isfav}) : super(key: key);

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>ProductDetails(
              name: widget.name,
              price: widget.price,
              image: widget.image,
            )));
          },
          child: GridTile(
            child:
            Image.network(widget.image),
            footer: GridTileBar(
              backgroundColor: Colors.black26,
              title: Column(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                       widget.price,
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),

                      Text(
                        widget.descPrice,
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough),),
                    ],)
                ],
              ),
              trailing: Column(
                children: [
                  IconButton(
                    icon: widget.isfav == true

                        ? Icon(Icons.favorite,color:
                    Colors.red,):Icon(Icons.favorite_border),
                    onPressed: (){
                      setState(() {
                        //widget.isfav = ! widget.isfav;

                      });
                    },
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
