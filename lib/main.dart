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
        title: Text("Card"),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          shadowColor: Color.fromRGBO(21, 23, 21, 1),
          color: Color.fromARGB(1000, 200, 71, 100),
          elevation: 50,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is Card!"),
            ),
          ),
        ),
      ),
    );
  }

}
