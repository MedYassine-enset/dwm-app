import 'package:flutter/material.dart';
class CounterPage extends StatefulWidget {


  CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter value = ${counter}"),),
      body: Center(
        child: Text("Counter value = ${counter}"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "remove",
            onPressed: (){setState(() {
            --counter;
          });}, child: Icon(Icons.remove),),
          SizedBox( width: 30,),
          FloatingActionButton(
            heroTag: "plus",
            onPressed: (){setState(() {
            ++counter;
          });}, child: Icon(Icons.add),)
        ],
      ),
    );
  }
}
