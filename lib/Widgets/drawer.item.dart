import 'package:flutter/material.dart';


class MyDrawerIteam extends StatelessWidget {
  String iteamtitle;
  Icon iteamicon;
  Function onTap;

  MyDrawerIteam({
    Key? key,
    required this.iteamtitle,
    required this.iteamicon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iteamicon,
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      onTap: () => onTap(),
      title: Text(
        iteamtitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
