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
        title: Text("ButtonProperties"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 12,left: 23,right: 20,bottom: 15),
              padding: EdgeInsets.all(20),
              child: Text("Hello Flutter Community"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(40)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    blurRadius: 5,
                    offset: Offset(2, 3)
                  ),
                  BoxShadow(
                    color: Colors.lightBlue,
                    blurRadius: 5,
                    offset: Offset(3, 4)
                  ),
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 2,
                    offset: Offset(1, 3)
                  )
                ]
              ),
            ),
            Container(
              width: 200,
              height: 150,
              alignment: Alignment.center,
              child: Text("Hello Dart!!"),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 7,
                  style: BorderStyle.solid
                ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 200,
              height: 150,
              child: Text("Clean Code"),
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(5, 10, 6, 8),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.purple,
                  width: 6
                ),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5
                  ),
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 10
                  ),
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 8,
                    offset: Offset(4, 6)
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
