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
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text("Home",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        leading: Icon(
          Icons.abc_rounded,
          color: Colors.blue,
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Flutter is promising!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w800
              ),
            ),
            Text("Hello Programming world! Remember we are all coders we have to code every single day",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                backgroundColor: Colors.green,
                decoration: TextDecoration.lineThrough,
                wordSpacing: 3,
                letterSpacing: 5,
                overflow: TextOverflow.ellipsis
              ),
            ),
            Text("Hello Flutter!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold
              ),
            ),
            Icon(
              Icons.access_alarm,
              color: Colors.amberAccent,
              size: 20,
            )
          ],
        ),
      ),
    );
  }

}
