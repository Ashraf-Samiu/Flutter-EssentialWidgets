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
    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "First Name",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder()
                ),
              ),
          ),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder()
                ),
              ),
          ),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: (){
                    mySnackBar("form has been submitted!", context);
                  },
                  child: Text("Submit Information"),
                  style: buttonStyle,
              ),
          )
        ],
      ),
    );
  }
}