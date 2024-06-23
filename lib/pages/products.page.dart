import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp_products_p2/pages/product.item.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  const ProductsPage({ Key? key }) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://localhost:9000/products")).then((res) {
      setState(() {
        products = json.decode(res.body);
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
        title: Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductItem(product: products[index], details: false,);
        },
        itemCount: products.length,
      )
    );
  }
}