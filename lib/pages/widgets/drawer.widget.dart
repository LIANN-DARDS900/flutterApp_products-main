import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
const MyAppDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black, Theme.of(context).primaryColor])
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/avatarr.jpg"),
                  radius: 50,
                )
              ],
            ) 
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/home");
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Products"),
            leading: Icon(Icons.backpack_rounded),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            },
          ),
        ],
      ),
    );
  }
}