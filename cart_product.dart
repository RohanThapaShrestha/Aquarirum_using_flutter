import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({super.key});

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var products_on_the_carts = [
    {
      "Name": "Guppy",
      "Picture": "assets/gu.jpg",
      "Price": "200",
      "Quantity": "1",
    },
    {
      "Name": "Beta Fish",
      "Picture": "assets/beta.jpg",
      "Price": "200",
      "Quantity": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_carts.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_product_name: products_on_the_carts[index]["name"],
            cart_product_picture: products_on_the_carts[index]["picture"],
            cart_product_price: products_on_the_carts[index]["price"],
            cart_product_quantity: products_on_the_carts[index]["quantity"],
          );
        });
  }
}

class SingleCartProduct extends StatefulWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_quantity;

  SingleCartProduct({
    super.key,
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_quantity,
  });

  @override
  State<SingleCartProduct> createState() => _SingleCartProductState();
}

class _SingleCartProductState extends State<SingleCartProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
        // child:,
        // title: Text("on progress"),
        );
  }
}
