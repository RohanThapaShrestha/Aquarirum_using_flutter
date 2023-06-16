import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Category(
            image_locattion: "assets/aa.jpg",
            image_capation: "Fish",
          ),
          Category(
            image_locattion: "assets/bb.jpg",
            image_capation: "Plants",
          ),
          Category(
            image_locattion: "assets/cc.jpg",
            image_capation: "Accessories",
          ),
          Category(
            image_locattion: "assets/dd.jpg",
            image_capation: "Substrate",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_locattion;
  final String image_capation;
  const Category(
      {super.key, required this.image_locattion, required this.image_capation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
              title: Image.asset(
                image_locattion,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                height: 30,
                width: 100,
                alignment: Alignment.bottomCenter,
                child: Text(
                  image_capation,
                  style: TextStyle(fontSize: 12.00),
                ),
              )),
        ),
      ),
    );
  }
}
