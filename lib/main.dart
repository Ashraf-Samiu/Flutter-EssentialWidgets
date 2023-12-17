import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container",
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: [
          RichText(text: TextSpan(
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
            children: [
              TextSpan(
                text: "Hello ",
              ),
              TextSpan(
                text: "Programmer ",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: "Write Clean Code!",
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800
                )
              ),
            ]
          )),
          RichText(text: TextSpan(
            text: "To Register, Tap On ",
            children: [
              TextSpan(
                text: "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )
              )
            ]
          ))
        ],
      ),
    );
  }
}