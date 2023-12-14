import 'package:flutter/material.dart';
///SnackBarMessage
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
  mySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Application"),
        actions: [
          IconButton(onPressed: (){mySnackBar("This is label", context);}, icon: const Icon(Icons.label))
        ],
      ),
      body: const Text("Hello World!"),
    );
  }

}