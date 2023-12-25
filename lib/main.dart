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
            ///it detects the contents..
            GestureDetector(
              onTap: (){
                print("Tapped on the text");
              },
              onLongPress: (){
                print("longPressed on the text");
              },
              onDoubleTap: (){
                print("doubleTapped on the text");
              },child: Text("Simple text"),
            )
          ],
        ),
      ),
    );
  }
}
