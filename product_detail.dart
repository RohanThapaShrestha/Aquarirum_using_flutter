import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_Name;
  final product_detail_Picture;
  final product_detail_Price;

  const ProductDetail(
      {this.product_detail_Name,
      this.product_detail_Picture,
      this.product_detail_Price});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: const Text("Aqua App"),
        actions: [
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_Picture),
              ),
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                    leading: Text(
                      widget.product_detail_Name,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    title: Row(children: [
                      Expanded(
                        child: Text("Rs " + widget.product_detail_Price,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ])),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Quantity"),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 2,
                child: Row(children: [
                  Expanded(child: Text("Quantity")),
                  Expanded(child: Icon(Icons.arrow_drop_down))
                ]),
              ))
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.red,
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 2,
                    child: Text("Buy")),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Details"),
            subtitle: Text(
                "The guppy, also known as millionfish and rainbow fish, is one of the world's most widely distributed tropical fish and one of the most popular freshwater aquarium fish species. It is a member of the family Poeciliidae and, like almost all American members of the family, is live-bearing"),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("You may like"),
          ),
          Container(
            height: 360,
            child: MayYouLike(),
          )
        ],
      ),
    );
  }
}

class MayYouLike extends StatefulWidget {
  const MayYouLike({super.key});

  @override
  State<MayYouLike> createState() => _MayYouLikeState();
}

class _MayYouLikeState extends State<MayYouLike> {
  var product_List = [
    {
      "Name": "Guppy",
      "Picture": "assets/gu.jpg",
      "Price": "200",
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
          return ProductYouMayLike(
            product_name: product_List[index]["Name"],
            product_picture: product_List[index]["Picture"],
            product_price: product_List[index]["Price"],
          );
        });
  }
}

class ProductYouMayLike extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  ProductYouMayLike({
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
