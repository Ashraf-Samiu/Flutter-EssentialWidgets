import 'package:flutter/material.dart';
///MaterialApp
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      color: Colors.deepOrange,
      title: "Application Title",
      home: const HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Application"),
      ),
      body: const Text("Hello World!"),
    );
  }

}