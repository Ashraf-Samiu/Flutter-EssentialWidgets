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
  var myItems = [
    {"Name": "Ashraf", "Age": "20", "Address": "Dhaka City", "Country": "Bangladesh"},
    {"Name": "John", "Age": "25", "Address": "New York", "Country": "USA"},
    {"Name": "Emma", "Age": "22", "Address": "London", "Country": "UK"},
    {"Name": "Carlos", "Age": "30", "Address": "Madrid", "Country": "Spain"},
    {"Name": "Yuki", "Age": "28", "Address": "Tokyo", "Country": "Japan"},
    {"Name": "Mia", "Age": "24", "Address": "Sydney", "Country": "Australia"},
    {"Name": "Pablo", "Age": "26", "Address": "Buenos Aires", "Country": "Argentina"},
    {"Name": "Lily", "Age": "23", "Address": "Paris", "Country": "France"},
    {"Name": "Ravi", "Age": "27", "Address": "Mumbai", "Country": "India"},
    {"Name": "Chen", "Age": "29", "Address": "Beijing", "Country": "China"},
    {"Name": "Olga", "Age": "31", "Address": "Moscow", "Country": "Russia"},
    {"Name": "Diego", "Age": "32", "Address": "Mexico City", "Country": "Mexico"},
    {"Name": "Aisha", "Age": "21", "Address": "Cairo", "Country": "Egypt"},
    {"Name": "Matteo", "Age": "33", "Address": "Rome", "Country": "Italy"},
    {"Name": "Sofia", "Age": "26", "Address": "Athens", "Country": "Greece"},
    {"Name": "Harun", "Age": "24", "Address": "Seoul", "Country": "South Korea"},
    {"Name": "Zara", "Age": "22", "Address": "Dubai", "Country": "UAE"},
    {"Name": "Isaac", "Age": "29", "Address": "Toronto", "Country": "Canada"},
    {"Name": "Nina", "Age": "27", "Address": "Berlin", "Country": "Germany"},
    {"Name": "Lucas", "Age": "28", "Address": "Sao Paulo", "Country": "Brazil"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essential Widgets"),
      ),
      body: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.star),
              title: Text(myItems[index]["Name"]!),
              subtitle: Text(myItems[index]["Address"]!),
            );
          }),
    );
  }
}
