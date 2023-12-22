import 'package:flutter/material.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      title: "Practice Project",
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Home",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        ///columns takes full access of the but it's children only takes the their own places
        ///it works vertically where y axis is mainAxis and x axis is crossAxis
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Hello World!"),
          Text("Hello Programmer!"),
          Text("Hello Dart!"),
          Text("Hello Flutter!"),
          Row(
            ///row takes the full line it don't take any vertical place
            ///it works horizentally where x axis is mainAxis and y axis is crossAxis
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hello "),
              Text("programming "),
              Text("World! "),
              Text("Happy Coding")
            ],
          )
        ],
      ),
    );
  }

}