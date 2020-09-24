import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color});





}
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";


List<Product> products = [

  Product(

      id: 1,
      title: " Red Hell ",
      price: 200,
      description: dummyText,
      size: 12,
      image:"images/bag_1.png",
      color: Color(0xFF3D82AE)

  ),
  Product(

      id: 2,
      title: " Ultimate Red",
      price: 490,
      description: dummyText,
      size: 8,
      image:"images/bag_2.png",
      color: Color(0xFFD3A984)

  ),
  Product(

      id: 3,
      title: "Red Bag ",
      price: 40,
      description: dummyText,
      size: 9,
      image:"images/bag_3.png",
      color:Color(0xFF989493)

  ),
  Product(

      id: 4,
      title: "Bolsa Red",
      price: 120,
      description: dummyText,
      size: 13,
      image:"images/bag_4.png",
      color:Color(0xFFE6B398)

  ),
  Product(

      id: 5,
      title: "Bolsa Vermelha",
      price: 79,
      description: dummyText,
      size: 6,
      image:"images/bag_5.png",
      color:Color(0xFFFB7883)

  ),
  Product(

      id: 6,
      title: "O Diabo veste Prada",
      price: 799,
      description: dummyText,
      size: 15,
      image:"images/bag_6.png",
     color:  Color(0xFFAEAEAE)

  )

];






