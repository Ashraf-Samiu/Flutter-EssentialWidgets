import 'package:flutter/material.dart';
///flutter project structure
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  mySnackBar(messege,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(messege))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Application"),
        titleSpacing: 50,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        elevation: 10,
        actions: [
          IconButton(onPressed: () {mySnackBar("this is messeneger", context);},icon: Icon(Icons.message)),
          IconButton(onPressed: (){mySnackBar("this is search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar("this is comment ", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar("This is settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){mySnackBar("This is profile", context);}, icon: Icon(Icons.person))
        ],
      ),
    );
  }

}