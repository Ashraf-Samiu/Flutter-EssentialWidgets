import 'package:flutter/material.dart';
///End-Drawer
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
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.red),
                    accountName: Text("Ashraf Samiu"),
                    accountEmail: Text("ashrafhossainsamiu@gmail.com"),
                    currentAccountPicture: Image.network("https://cdn-images-1.medium.com/v2/resize:fit:918/1*rb3JJRN2YfybijTcxQiiUQ.png")
                ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.add),
                onTap: (){mySnackBar("This is Home", context);}
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.add),
                onTap: (){mySnackBar("This is profile", context);}
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                trailing: Icon(Icons.add),
                onTap: (){mySnackBar("This is email", context);}
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.add),
                onTap: (){mySnackBar("This is settings", context);}
            )
          ],
        ),
      ),
    );
  }

}