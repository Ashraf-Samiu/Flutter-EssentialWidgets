import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essential Widgets"),
      ),
      body: GridView(
          scrollDirection: Axis.horizontal,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1
          ),
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.account_box),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.account_box_sharp),
            Text("Hello!"),
            Text("Programming"),
            Text("Dart"),
            Text("Flutter"),
            Text("Counter App"),
            Text("Sum App"),
            Text("Quiz App"),
            Text("Water Tracker App"),
            Text("Task Manager App"),
            Text("CRUD App"),
            Text("Grocery Shop App"),
            Text("E-Commerce App")
          ],
      ),
    );
  }
}
