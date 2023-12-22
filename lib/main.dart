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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hello "),
              Text("How "),
              Text("Are "),
              Text("You?")
            ],
          ),
          Column(
            ///when we will take column inside a column it will take only space of children column not the parent
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("getting success requires hardwork"),
              Text("Coding is easy just need to take it as fun"),
              Text("Discipline is the key to success")
            ],
          ),
          Row(
            children: [
              Image.asset(
                "images/123.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.scaleDown,
              ),
              Image.network(
                  "https://images.pexels.com/photos/1557652/pexels-photo-1557652.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
              )
            ],
          )
        ],
      ),
    );
  }

}