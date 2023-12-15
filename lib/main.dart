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
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text("Home",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        leading: Icon(
          Icons.abc_rounded,
          color: Colors.blue,
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://t4.ftcdn.net/jpg/02/44/43/69/360_F_244436923_vkMe10KKKiw5bjhZeRDT05moxWcPpdmb.jpg",
                width: 200,
                height: 300,
                fit: BoxFit.scaleDown,
                repeat: ImageRepeat.repeatY,///will work only when it is in scaleDown fit
            ),
            Image.asset(
              "images/234.jpg",
              height: 300,
              width: 400,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }

}
