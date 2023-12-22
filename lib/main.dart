import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Alert Dialogue",
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
  myAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alert!"),
                content: Text("Want to Delete?"),
                actions: [
                  TextButton(
                      onPressed: (){
                          mySnackBar("deleted", context);
                          Navigator.of(context).pop();
                        },child: Text("Yes")
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("No")),
                ],
          ));
        });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",),
      ),
      body: Row(
        children: [
          ElevatedButton(
              onPressed: (){
                myAlertDialog(context);
              },
              child: Text("ElevatedButton"),
          ),
        ],
      ),
    );
  }
}