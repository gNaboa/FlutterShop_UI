import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  DetailScreen(this.product);
  
  
  Widget ColorDot(Color color){
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: DecoratedBox(decoration: BoxDecoration(

          color: color,
          shape: BoxShape.circle

      )),
    );
    
  }
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: product.color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: size.height,
                  child: Stack(children: [
                    Container(
                      padding:
                          EdgeInsets.only(top: size.height * 0.15, left: 15),
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              topLeft: Radius.circular(24))),
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                Text("Color",style: TextStyle(fontSize: 20),),
                                SizedBox(height: 10,),
                                Row(

                                  children: [
                                    ColorDot(Colors.blue),
                                    SizedBox(width: 5),
                                    ColorDot(Colors.pink),
                                    SizedBox(width: 5),
                                    ColorDot(Colors.orange)
                                  ],
                                )

                              ],),
                              SizedBox(width: 170,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Size",style: TextStyle(fontSize: 20),),
                                  Text("${product.size} cm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                                ],
                              )

                            ],
                          ),
                         SizedBox(height: 35,),
                         Container(

                           height: 80,
                           width: 400,
                           color: Colors.transparent,
                           child: Text(product.description,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                         ),
                          Row(
                            children: [
                              Row(children: [
                                Container(
                                  alignment: Alignment.center,
                                  width:30 ,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(16))
                                  ),
                                    child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10,),
                                Text("01",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 19),),
                                SizedBox(width: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  width:30 ,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(Radius.circular(16))
                                  ),
                                  child: Icon(Icons.add),
                                )
                              ],),
                              SizedBox(width: 175,),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: Icon(Icons.perm_scan_wifi,color: Colors.white,size: 15,),
                              )
                            ],

                          ),
                          SizedBox(height: 20,),
                          Row(children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                
                                border: Border.all(color: product.color),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(Icons.shopping_cart,color: product.color,),
                            ),
                            SizedBox(width: 22,),

                            Container(
                              alignment: Alignment.center,
                              height: 60,
                              width: 290,
                              decoration: BoxDecoration(
                                color: product.color,
                                borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                              child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            )

                          ],)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aristocratic Hang Bag",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            product.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "\$${product.price}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 40, left: 50),
                                child: Container(
                                  height: 220,
                                  width: 220,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("${product.image}"),
                                          fit: BoxFit.cover)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]))
            ],
          ),
        ));
  }
}
