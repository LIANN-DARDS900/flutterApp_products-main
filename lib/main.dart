import 'package:flutter/material.dart';
import 'package:flutterapp_products_p2/pages/home.page.dart';
import 'package:flutterapp_products_p2/pages/products.details.dart';
import 'package:flutterapp_products_p2/pages/products.page.dart';
import 'package:flutterapp_products_p2/pages/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.themes[0],
      routes: {
        "/home": (context) => HomePage(),
        "/": (context) => ProductsPage(),
        "/productDetails": (context) => ProductsDetails(
          productId: ModalRoute.of(context)!.settings.arguments as int,
        ),
      },
    );
  }
}
