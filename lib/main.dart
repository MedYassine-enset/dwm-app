import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pages/counter.page.dart';
import 'Pages/home.page.dart';
import 'Pages/products.page.dart';

void main(){
  runApp(DwmApp());
}

class DwmApp extends StatelessWidget {
  const DwmApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>HomePage(),
        "/counter":(context)=>CounterPage(),
        "/products":(context)=>ProductsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22,color: Colors.orange),
          bodyLarge: TextStyle(fontSize: 32,color: Colors.orange),
          bodySmall: TextStyle(fontSize: 18,color: Colors.orange),
        ),
        iconTheme: IconThemeData(
          color: Colors.teal,
          size: 26
        )
      ),
    );
  }
}



