import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/Product.dart';

class ItemCard extends StatelessWidget {

 Product product;
 Function press;

 ItemCard(this.product,this.press);




  @override
  Widget build(BuildContext context) {
  return  GestureDetector(
    onTap: press,
     child:  Column(
       crossAxisAlignment: CrossAxisAlignment.start,

     children: [
       Container(
         padding: EdgeInsets.all(10),
         height: 180,
         width: 160,

         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(16),
             color: product.color
         ),
         child: Image.asset(product.image,fit: BoxFit.cover,),
       ),
       Text(product.title),
       Text("\$${product.price.toString()}",style: TextStyle(fontWeight: FontWeight.bold),)
     ],
   ),
   );
  }


}
