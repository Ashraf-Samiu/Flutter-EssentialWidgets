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
        title: Text("Navigation"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        ///passing data to constructor
                        builder: (context)=> Activity1("Home to Activity-1")
                    )
                );
              }, child: Text("Go to Activity-1"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=> Activity2("Home to Activity-2 ")
                )
            );
          }, child: Text("Go to Activity-2"),
          ),
        ],
      ),
    );
  }
}
class Activity1 extends StatelessWidget{
      String message;
      Activity1(
        this.message,
        {super.key}
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context, 
                  MaterialPageRoute(
                      builder: (context)=> Activity2("Activity 1 to Activity 2")
                  ),
              );
            }, child: Text("Go to Activity-2")),
      ),
    );
  }
}
class Activity2 extends StatelessWidget{
      String text;
      Activity2(
        this.text,
        {super.key}
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=> Activity1("Activity 2 to Activity 1")));
              ///Or Navigator.of(context).pop();
            }, child: Text("Go to Activity-1")
        ),
      ),
    );
  }
  
}