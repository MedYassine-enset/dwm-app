import 'package:dwm_app/Widgets/drawer.header.dart';
import 'package:dwm_app/Widgets/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerHeader(),
          MyDrawerIteam(iteamtitle: "Home",iteamicon: Icon(Icons.home) ,onTap: (){
            Navigator.of(context).pop();
            Navigator.pushNamed(context, "/");
          } ,),
          MyDrawerIteam(iteamtitle: "Counter",iteamicon: Icon(Icons.ac_unit) ,onTap: (){
            Navigator.of(context).pop();
            Navigator.pushNamed(context, "/counter");
          } ,),
          MyDrawerIteam(iteamtitle: "Products",iteamicon: Icon(Icons.account_balance) ,onTap: (){
            Navigator.of(context).pop();
            Navigator.pushNamed(context, "/products");
          } ,),
        ],
      ),
    );
  }
}
