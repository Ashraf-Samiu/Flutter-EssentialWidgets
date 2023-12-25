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
  TextEditingController searchTextFieldController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///it detects the contents with giving a reflection..
            InkWell(
              onTap: (){
                print("tapped on hello world message");
              },
              onLongPress: (){
                print("long pressed on hello world message");
              },
              onDoubleTap: (){
                print("Double pressed on hello world message");
              },child: Text("hello World!"),
            )
          ],
        ),
      ),
    );
  }
}
