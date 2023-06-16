import 'package:application/product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_List = [
    {
      "Name": "Guppy",
      "Picture": "assets/gu.jpg",
      "Price": "200",
    },
    {
      "Name": "Flowerhorn",
      "Picture": "assets/fh.jpg",
      "Price": "1500",
    },
    {
      "Name": "Lion head gold",
      "Picture": "assets/gf.jpg",
      "Price": "1000",
    },
    {
      "Name": "Beta fish",
      "Picture": "assets/beta.jpg",
      "Price": "200",
    },
    {
      "Name": "Parrot fish",
      "Picture": "assets/pp.jpg",
      "Price": "1000",
    },
    {
      "Name": "Koi",
      "Picture": "assets/koi.jpg",
      "Price": "500",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_List.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Product(
            product_name: product_List[index]["Name"],
            product_picture: product_List[index]["Picture"],
            product_price: product_List[index]["Price"],
          );
        });
  }
}

class Single_Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  Single_Product({
    this.product_name,
    this.product_picture,
    this.product_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: product_name,
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new ProductDetail(
                    // passing the value of product to product details
                    product_detail_Name: product_name,
                    product_detail_Picture: product_picture,
                    product_detail_Price: product_price,
                  ))),
          child: GridTile(
            footer: Container(
                color: Colors.white60,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Text("Rs " + product_price)
                  ],
                )),
            child: Image.asset(
              product_picture,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
  }
}
