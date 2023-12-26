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
  List<String> students= [
    "Ashraf",
    "Hossain",
    "Rahim",
    "Karim",
    "Afsar",
    "John",
    "Price",
    "Doe",
    "Abrar",
    "Jimmy"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essential Widgets"),
      ),
      body: ListView.separated(
            itemCount: 100,
            itemBuilder: (context,index){
              return ListTile(
                leading: Icon(Icons.star),
                trailing: Icon(Icons.safety_check),
                title: Text("$students-$index"),
                subtitle: Text("StudentName"),
              );
            },
            separatorBuilder: (context,index){
              return Column(
                children: [
                  Text(
                    index.toString()
                  ),
                  Divider(
                    height: 24,
                    thickness: 5,
                    color: Colors.red,
                    indent: 16,
                    endIndent: 16,
                  )
                ],
              );
            }),
    );
  }
}
