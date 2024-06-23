import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp_products_p2/pages/product.item.dart';
import 'package:http/http.dart' as http;

class ProductsDetails extends StatefulWidget {
  final int productId;
  ProductsDetails({ Key? key, required this.productId }) : super(key: key);

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  dynamic product = null;
    @override
    void initState() {
      super.initState();
      http.get(Uri.parse("http://localhost:9000/products/${widget.productId}")).then((res) {
        setState(() {
          product = json.decode(res.body);
          if (product['id'] is String) {
            product['id'] = int.parse(product['id']);
          }
        });
      }).catchError((err){
        print("Something went wrong");
        print(err);
      });
    }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Product ${widget.productId} Details "),
      ),
      body: Center(
        child: (product != null) ?
          ProductItem(product: product, details: true,) : 
          Container(),
      ),
    );
  }
}