import 'package:flutter/material.dart';
import 'package:flutterapp_products_p2/pages/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text(
          "HomePage",
        ),
      ),
    );
  }
}