import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUp.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key key}) : super(key: key);

  @override
  ProductDetailsState createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Saara Poly Silk ...'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                //Icon can be used to make it white
                onPressed: null,
                icon: Icon(Icons.favorite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.shopping_cart),
                  Positioned(
                      top: 12.0,
                      left: 10.0,
                      child: Container(
                        height: 15,
                        width: 15,
                        child: Text(
                          '3',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                      ))
                ],
              ),
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Saara Poly Silk Embellished, Woven Salwar Suit Material(Unstiched)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Special Price',
                      style: TextStyle(color: Colors.red[900]),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '₹ 549',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '₹ 1893',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Text(
                      '₹70% off',
                      style: TextStyle(color: Colors.red[900], fontSize: 14),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red[400],
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4.3',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '2814 ratings',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Align(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Size',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Tip:For the best fit, buy one size larger than your usual size',
                            style: TextStyle(fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'XS',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                      Text(
                        'S',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                      Text(
                        'M',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                      Text(
                        'L',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Color',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Product Details',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0),
                                          child: Text(
                                            'Color',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        )),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0),
                                          child: Text(
                                            'Length',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        )),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0),
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        )),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0),
                                          child: Text(
                                            'Sleeve',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        ))
                                  ],
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    child: Text(
                                      'Yellow',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    child: Text(
                                      'Knee Length',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    child: Text(
                                      'Bandage',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    child: Text(
                                      'Cap Sleeve',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Product Description',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Slip into this trendy and attractive dress from Rudraaksha and look stylish effortlessly. Made to accentuate any body type, it will give you that extra oomph and make you stand out wherever you are. Kepp the accessories minimal for that added elegant look, just your favourite heels and dangling...',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
