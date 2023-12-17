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
        title: Text("Profile",),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.network("https://cdn-peanutsquare.b-cdn.net/wp-content/uploads/2023/07/Designing-the-Product-Details-Page-67-scaled.jpg"),
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.network("https://cdn-peanutsquare.b-cdn.net/wp-content/uploads/2023/07/Designing-the-Product-Details-Page-67-scaled.jpg"),
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.network("https://cdn-peanutsquare.b-cdn.net/wp-content/uploads/2023/07/Designing-the-Product-Details-Page-67-scaled.jpg"),
          )
        ],
      ),
    );
  }
}