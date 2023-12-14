import 'package:flutter/material.dart';
///AppBar
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
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
        titleSpacing: 50,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        elevation: 10,
        actions: [
          IconButton(onPressed: () {mySnackBar("this is email", context);},icon: const Icon(Icons.email)),
          IconButton(onPressed: (){mySnackBar("this is search", context);}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar("this is comment ", context);}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar("This is settings", context);}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){mySnackBar("This is profile", context);}, icon: const Icon(Icons.person))
        ],
      ),
    );
  }

}