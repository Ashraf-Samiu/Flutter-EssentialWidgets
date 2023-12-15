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
            RichText(text: TextSpan(
              text: "Hello World! ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "I ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
                TextSpan(
                  text: "am ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                TextSpan(
                  text: "Programmer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  )
                )
              ]
            )),
          ],
        ),
      ),
    );
  }

}
