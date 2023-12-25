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
        title: Text("Button Properties"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: (){
            print("FAB button has been pressed!");
          }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.red,
                minimumSize: Size(20, 20),
                maximumSize: Size(200, 200),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                padding: EdgeInsets.symmetric(horizontal: 21,vertical: 20),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                  )
                ), onPressed: (){
                    print("Elevated Button has been pressed");
                }, onLongPress: (){
                    print("Elevated Button has been long pressed");
                },
                child: Text("Elevated Button")
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.yellow,
                textStyle: TextStyle(
                    fontSize: 20,
                  )
                ),
                onPressed: (){
                    print("elevated button has been pressed");
                }, onLongPress: (){
                    print("elevated button has been longPressed");
                 }, child: Text("Text Button"),
            ),
            IconButton(
                onPressed: (){
                  print("IconButton has been pressed");
                }, icon: Icon(Icons.home)
            ),
            OutlinedButton(
              onLongPress: (){
                print("Outlined button has been long pressed");
              }, onPressed: (){
                  print("Outlined Button has been pressed");
              }, child: Text("Outlined Button")
            ),
            FloatingActionButton(
                onPressed: (){
                  print("Floating action button has been pressed");
                },child: Text("FAB"),
            )
          ],
        ),
      ),
    );
  }
}
