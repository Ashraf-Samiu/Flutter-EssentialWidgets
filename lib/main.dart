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
  mySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    var buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.blue,
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        )
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",),
      ),
      body: Row(
        children: [
          TextButton(
              onPressed: (){mySnackBar("This is text button", context);},
              child: Text("TextButton")
          ),
          ElevatedButton(
              onPressed: (){mySnackBar("This is Elevated button", context);},
              child: Text("ElevatedButton"),
              style: buttonStyle,
          ),
          OutlinedButton(
              onPressed: (){mySnackBar("This is Outlined button", context);},
              child: Text("OutlinedButton")
          ),
        ],
      ),
    );
  }
}