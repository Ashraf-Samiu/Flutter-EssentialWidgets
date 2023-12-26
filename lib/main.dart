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
  mySnackBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Static-ListView"),
      ),
      body: ListView(
        ///it gives the facility of scrolling
        ///it will add a manual scroller
        //singleChildScrollView will solve the row&column overflow issues..
        scrollDirection: Axis.horizontal,
        children: [
          Text("Prgramming, "),
          Text("Dart, "),
          Text("Flutter, "),
          Text("Rest Api, "),
          Text("Food delivery App, "),
          Text("E-commerce App, "),
          Text("TODO App, "),
          Text("Quiz App, "),
          Text("Grocery Shop App, "),
          Text("Task Manager App, "),
          Text("BMI calculator App, "),
          Text("Counter App, "),
          Text("Sum App "),
        ],
      ),
    );
  }
}
