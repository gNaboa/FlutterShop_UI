import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/Categories.dart';
import 'package:online_shop_app/details_screen.dart';
import 'package:online_shop_app/item_card.dart';
import 'package:online_shop_app/models/Product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black87,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black87,
              ),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Women",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Categories(),
            Expanded(

                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,


                    ),
                    itemBuilder: (context, index) {
                      return ItemCard(
                          products[index],
                          () => Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailScreen(products[index]))));
                    }))
          ],
        ),
      ),
    );
  }
}
