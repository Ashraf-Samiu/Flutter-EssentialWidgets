import 'package:flutter/material.dart';
///BottomTabNavigation
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application Title",
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.email),
                label: "Contact")
          ],
        onTap: (int index){
          if(index==0){
            mySnackBar("This is Home", context);
          }else if(index==1){
            mySnackBar("this is profile", context);
          }else if(index==2){
            mySnackBar("This is contract", context);
          }
        },
      ),
    );
  }

}