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
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute
                    (builder: (context)=>SettingsScreen(userName: "Ashraf")
                  )
                ).then((value) {
                  print(value); ///Part of Async Programming
                });
              }, child: Text("Go to Settings")
            )
          ],
        ),
      ),
    );
  }
}
class SettingsScreen extends StatelessWidget{
  final String userName;
  final int? age;
  SettingsScreen({required this.userName,this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            Text(age.toString()),
            ElevatedButton(onPressed: (){
              Navigator.pop(context,{
                "Karim": 21
              });
            }, child: Text("Back to Home"))
          ],
        ),
      ),
    );
  }
}
